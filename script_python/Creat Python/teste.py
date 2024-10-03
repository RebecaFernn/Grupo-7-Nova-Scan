import banco as bd

resultado = bd.select(f"SELECT nome, fkEmpresa FROM usuario WHERE email = 'quiteria@' AND senha = 123")

print(type(resultado))