#!/opt/homebrew/opt/python@3.10/bin/python3.10
# -*- coding: utf-8 -*-
import re
import sys
from powerline_shell import main

from powerline_shell.utils import BasicSegment, warn


class Segment(BasicSegment):
    def add_to_powerline(self):
        self.powerline.append("\n$",
                              self.powerline.theme.RESET,
                              self.powerline.theme.RESET,
                              separator="")
