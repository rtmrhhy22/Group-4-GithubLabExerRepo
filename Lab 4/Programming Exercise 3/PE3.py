import unittest

class TicTacToe:
    def __init__(self):
        self.board = [['' for _ in range(3)] for _ in range(3)]
        self.current_player = 'X'

    def make_move(self, row, col):
        if self.board[row][col] == '':
            self.board[row][col] = self.current_player
            self.current_player = 'O' if self.current_player == 'X' else 'X'
            return True
        return False

    def check_winner(self):
        # Check rows and columns
        for i in range(3):
            if self.board[i][0] == self.board[i][1] == self.board[i][2] != '':
                return self.board[i][0]
            if self.board[0][i] == self.board[1][i] == self.board[2][i] != '':
                return self.board[0][i]
        
        # Check diagonals
        if self.board[0][0] == self.board[1][1] == self.board[2][2] != '':
            return self.board[0][0]
        if self.board[0][2] == self.board[1][1] == self.board[2][0] != '':
            return self.board[0][2]
        
        return None

    def is_board_full(self):
        return all(all(cell != '' for cell in row) for row in self.board)

class TestTicTacToe(unittest.TestCase):
    def setUp(self):
        self.game = TicTacToe()

    def test_initial_board_empty(self):
        for row in self.game.board:
            for cell in row:
                self.assertEqual(cell, '')

    def test_make_move(self):
        self.assertTrue(self.game.make_move(0, 0))
        self.assertEqual(self.game.board[0][0], 'X')
        self.assertFalse(self.game.make_move(0, 0))  # Spot already taken
        self.assertTrue(self.game.make_move(0, 1))
        self.assertEqual(self.game.board[0][1], 'O')

    def test_check_winner(self):
        self.game.make_move(0, 0)
        self.game.make_move(1, 0)
        self.game.make_move(0, 1)
        self.game.make_move(1, 1)
        self.game.make_move(0, 2)
        self.assertEqual(self.game.check_winner(), 'X')

    def test_board_full(self):
        moves = [(0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2), (2, 0), (2, 1), (2, 2)]
        for move in moves[:-1]:
            self.game.make_move(*move)
            self.assertFalse(self.game.is_board_full())
        self.game.make_move(*moves[-1])
        self.assertTrue(self.game.is_board_full())

if __name__ == '__main__':
    unittest.main()