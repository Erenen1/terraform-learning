
# Modüler VPC ve EC2 Yapısı

Bu proje, Terraform kullanarak AWS üzerinde modüler bir yapı ile VPC, Subnet, EC2 instance ve Security Group oluşturmayı hedefler. Modüler yapı sayesinde bu kaynaklar tekrar kullanılabilir hale gelir.

## Gereksinimler
- Terraform'un yüklü olması.
- AWS CLI kullanılarak kimlik bilgilerinin ayarlanmış olması (`aws configure` ile).

## Bu proje neler yapıyor?
- Bir VPC ve Subnet oluşturuyor.
- Bir EC2 instance oluşturuyor.
- EC2 için bir Security Group oluşturuyor ve sadece belirttiğiniz IP'den SSH erişimine izin veriyor.

## Kullanım
1. Proje dosyasını indirin ve dizine gidin:
   ```bash
   cd 02-modular-vpc-ec2
   ```

2. Terraform'u başlatın:
   ```bash
   terraform init
   ```

3. Yapılacak değişiklikleri görmek için plan oluşturun:
   ```bash
   terraform plan
   ```

4. Kaynakları oluşturmak için:
   ```bash
   terraform apply
   ```

   Komut sonunda oluşturulan kaynakların bilgileri gösterilecektir.

5. Kaynakları temizlemek isterseniz:
   ```bash
   terraform destroy
   ```

## Outputs
- `vpc_id`: Oluşturulan VPC'nin ID'si.
- `subnet_id`: Oluşturulan Subnet'in ID'si.
- `instance_id`: EC2 instance ID'si.
- `instance_public_ip`: EC2 instance'ın public IP adresi.

