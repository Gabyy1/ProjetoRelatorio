Create DataBase Projeto
Go
Use Projeto
Go
Create Table Relatorio (
codigo		int							not null,
tarefa		varchar(50)					not null,
vencido		int Check(vencido >= 0 )    not null,
d0			int Check(d0 >= 0 )			not null,
d1			int Check(d1 >= 0 )		    not null,
d2			int Check(d2 >= 0 )		    not null,
d3			int Check(d3 >= 0 )		    not null
Primary Key (codigo)
)
Go

Create Procedure sp_valida_vencido(@vencido int, @valido bit output)
As
	If (@vencido >= 0)
	Begin
		Set @valido = 1
	End
	Else
	Begin
		Set @valido = 0
	End 

Create Procedure sp_valida_d0(@d0 int, @valido_d0 bit output)
As
	If (@d0 >= 0)
	Begin
		Set @valido_d0= 1
	End
	Else
	Begin
		Set @valido_d0 = 0
	End

Create Procedure sp_valida_d1(@d1 int, @valido_d1 bit output)
As
	If (@d1 >= 0)
	Begin
		Set @valido_d1 = 1
	End
	Else
	Begin
		Set @valido_d1 = 0
	End

Create Procedure sp_valida_d2(@d2 int, @valido_d2 bit output)
As
	If (@d2>= 0)
	Begin
		Set @valido_d2 = 1
	End
	Else
	Begin
		Set @valido_d2 = 0
	End

Create Procedure sp_valida_d3(@d3 int, @valido_d3 bit output)
As
	If (@d3>= 0)
	Begin
		Set @valido_d3 = 1
	End
	Else
	Begin
		Set @valido_d3 = 0
	End

Create Procedure sp_relatorio (@op char(1), @codigo int, @tarefa varchar(50), @vencido int, @d0 int, @d1 int, @d2 int, @d3 int,  @saida varchar(200) output)
As
	Declare @valido	bit,
			@valido_d0	bit,
			@valido_d1	bit,
			@valido_d2	bit,
			@valido_d3	bit
If (Upper(@op)='D' or (@op)= 'd' and @codigo is not null)
	Begin
		Delete relatorio Where codigo = @codigo
		Set @saida = 'Tarefa que corresponde ao codigo: ' +Cast(@codigo As Varchar(5))+ ' excluída'
	End
	Else
	Begin
		If (Upper(@op)='D' or (@op)= 'd' and @codigo is null)
	Begin
		Raiserror('Codigo não pode ser nulo', 16,1)
	End
	Begin
		Exec sp_valida_vencido @vencido, @valido output
		Print @valido
		Exec sp_valida_d0 @d0, @valido_d0 output
		Print @valido_d0
		Exec sp_valida_d1 @d1, @valido_d1 output
		Print @valido_d1
		Exec sp_valida_d2 @d2, @valido_d2 output
		Print @valido_d2
		Exec sp_valida_d3 @d3, @valido_d3 output
		Print @valido_d3
	
		If (@valido = 0 Or @valido_d0 = 0 Or @valido_d1 = 0 Or @valido_d2 = 0 Or @valido_d3 = 0)
	Begin
		Raiserror ('Número de tarefas não pode ser menor que 0', 16, 1)
	End
	Else
		If (Upper(@op) = 'I' Or (@op)='i')
	Begin
		Insert Into relatorio Values (@codigo, @tarefa, @vencido, @d0, @d1, @d2, @d3)
		Set @saida = 'Tarefa cadastrada'
	End
	Else
	Begin
		If (Upper(@op) = 'U' Or (@op)='u')
	Begin
		Update relatorio
		Set codigo = @codigo, tarefa = @tarefa, vencido = @vencido, d0 = @d0, d1 = @d1, d2 = @d2, d3 = @d3
		Where codigo =  @codigo
		Set @saida = 'Tarefa que corresponde ao codigo: ' + Cast(@codigo As varchar(11)) + ' atualizada'
	End
	Else
	Begin
		Raiserror('Operação inválida', 16, 1)
	End
	End
	End
	End