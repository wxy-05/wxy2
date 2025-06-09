def calculate(a: float, operator: str, b: float) -> float:
    """
    四则运算计算器
    :param a: 第一个操作数
    :param operator: 运算符 (+, -, *, /)
    :param b: 第二个操作数
    :return: 计算结果
    """
    operations = {
        '+': lambda x, y: x + y,
        '-': lambda x, y: x - y,
        '*': lambda x, y: x * y,
        '/': lambda x, y: x / y if y != 0 else float('NaN')
    }
    return operations.get(operator, lambda x, y: float('NaN'))(a, b)


# 测试代码
if __name__ == "__main__":
    print("简易计算器程序")
    print("支持运算符: +, -, *, /")
    print("输入'q'退出程序")

    while True:
        try:
            # 获取用户输入
            user_input = input("\n请输入计算表达式 (如: 5 + 3): ").strip()

            # 退出条件
            if user_input.lower() == 'q':
                print("\n计算器程序已退出")
                break

            # 解析输入
            parts = user_input.split()
            if len(parts) != 3:
                print("错误: 请输入有效的表达式 (如: 5 + 3)")
                continue

            a = float(parts[0])
            operator = parts[1]
            b = float(parts[2])

            # 执行计算并显示结果
            result = calculate(a, operator, b)

            if str(result) == 'nan':
                print(f"错误: 无效的运算符或除数为零 ({operator})")
            else:
                print(f"结果: {a} {operator} {b} = {result}")

        except ValueError:
            print("错误: 请输入有效的数字")
        except Exception as e:
            print(f"发生错误: {str(e)}")