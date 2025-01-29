
# Temel EC2 Instance Oluşturma Projesi

Bu proje, Terraform kullanarak AWS üzerinde bir EC2 instance oluşturmayı gösteriyor. EC2 için bir security group oluşturuluyor ve SSH erişimi sadece belirttiğiniz IP adresine izin verecek şekilde sınırlandırılıyor.

## Gereksinimler
- Terraform yüklü olmalı.
- AWS CLI ile kimlik doğrulama yapılmış olmalı (`aws configure` komutunu kullanarak erişim bilgilerini ayarlayın).

## Bu proje neler yapıyor?
- AWS üzerinde bir EC2 instance oluşturuyor.
- Sadece belirttiğiniz IP'nin SSH erişimi yapabileceği bir security group oluşturuyor.

## Kullanım
1. İlk olarak Terraform'u başlatın:
   ```bash
   terraform init
   ```

2. Konfigürasyonun doğru olduğunu kontrol etmek için:
   ```bash
   terraform plan
   ```

3. EC2 instance ve security group'u oluşturmak için:
   ```bash
   terraform apply
   ```

   Komut sonunda, oluşturulan instance ile ilgili bilgileri göreceksiniz.

4. Kaynakları temizlemek için:
   ```bash
   terraform destroy
   ```

## Çıkışlar
- EC2 instance'ın public IP adresi ve ID bilgilerini çıktı olarak alabilirsiniz.
