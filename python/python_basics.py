#!/usr/bin/env python3
"""
Pythonの基本的な記法のサンプルコード
このファイルには、Pythonの主要な機能と構文の例が含まれています。
"""

from typing import List, Dict, Optional
from functools import wraps
import time

# デコレータの定義
def measure_time(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"{func.__name__}の実行時間: {end - start:.4f}秒")
        return result
    return wrapper

# クラスの定義
class Person:
    def __init__(self, name: str, age: int):
        self.name = name
        self.age = age
    
    def greet(self) -> str:
        return f"こんにちは、{self.name}です。{self.age}歳です。"
    
    @property
    def is_adult(self) -> bool:
        return self.age >= 20

# 基本的な関数定義
def calculate_sum(numbers: List[int]) -> int:
    """
    数値のリストの合計を計算する
    """
    return sum(numbers)

# ジェネレータ関数の例
def fibonacci(n: int):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

@measure_time
def main():
    # 基本的な変数の使用
    name = "太郎"
    age = 25
    
    # リストの操作
    numbers = [1, 2, 3, 4, 5]
    doubled = [x * 2 for x in numbers]  # リスト内包表記
    
    # 辞書の操作
    person_dict = {
        "name": "花子",
        "age": 30,
        "hobbies": ["読書", "旅行"]
    }
    
    # タプルの使用
    coordinates = (35.6895, 139.6917)  # 東京の座標
    
    # if文による条件分岐
    if age >= 20:
        status = "成人"
    else:
        status = "未成人"
    
    # for文によるループ
    total = 0
    for num in numbers:
        total += num
    
    # try-except による例外処理
    try:
        result = 10 / 0
    except ZeroDivisionError as e:
        print(f"エラーが発生しました: {e}")
    
    # クラスのインスタンス化と使用
    person = Person("一郎", 22)
    greeting = person.greet()
    
    # ジェネレータの使用
    fib_numbers = list(fibonacci(10))
    
    # 結果の出力
    print(f"名前: {name}")
    print(f"2倍にしたリスト: {doubled}")
    print(f"辞書の値: {person_dict['name']}")
    print(f"合計: {total}")
    print(f"挨拶: {greeting}")
    print(f"フィボナッチ数列: {fib_numbers}")

if __name__ == "__main__":
    main() 