def add(a: float, b: float) -> float:
    """2つの数値を加算します"""
    return a + b

def subtract(a: float, b: float) -> float:
    """2つの数値を減算します"""
    return a - b

def multiply(a: float, b: float) -> float:
    """2つの数値を乗算します"""
    return a * b

def divide(a: float, b: float) -> float:
    """2つの数値を除算します"""
    if b == 0:
        raise ValueError("0での除算はできません")
    return a / b

if __name__ == "__main__":
    # 簡単なテスト
    print(f"10 + 5 = {add(10, 5)}")
    print(f"10 - 5 = {subtract(10, 5)}")
    print(f"10 * 5 = {multiply(10, 5)}")
    print(f"10 / 5 = {divide(10, 5)}") 