#Executar Get-Disk antes de rodar o script para verificar se o mesmo já identificou seu tamanho certo.
Get-Disk 

#Verificar o número do disco e executar o update abaixo
#alterar x para o número do disco que deseja alterar


Update-Disk -Number x

# Definir na váriavel a letra da partição
$drive_letter = "F"

# Pegar a partição e alocar todo o volume disponível do disco na letra indicada;
$size = (Get-PartitionSupportedSize -DriveLetter $drive_letter)
Resize-Partition -DriveLetter $drive_letter -Size $size.SizeMax
