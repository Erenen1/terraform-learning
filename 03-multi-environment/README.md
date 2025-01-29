
# Multi-Environment Altyapı Yönetimi

Bu proje, Terraform kullanarak farklı ortamlar (development ve production) için altyapı yönetimini öğrenmeyi amaçlar. Her ortamın kendine özgü ayarları ve kaynakları bulunmaktadır.

## Hedefler
- Development (dev) ve Production (prod) ortamları için ayrı yapılandırmalar.
- VPC, Subnet ve EC2 instance için modüler yapı.
- Ortamlar arasında ayrı Terraform state dosyaları kullanımı.

## Gereksinimler
- Terraform'un yüklü olması.
- AWS CLI kullanılarak kimlik bilgilerinin ayarlanmış olması (`aws configure` ile).

## Proje Yapısı
```
03-multi-environment/
├── modules/
│   ├── vpc/        # Daha önce oluşturduğun VPC modülü
│   ├── ec2/        # Daha önce oluşturduğun EC2 modülü
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── dev.tfvars
│   │   └── terraform.tfstate (oluşturulduktan sonra burada saklanır)
│   ├── prod/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── prod.tfvars
│   │   └── terraform.tfstate (oluşturulduktan sonra burada saklanır)
├── README.md
└── provider.tf
```

## Kullanım

### Development Ortamı
1. `dev` dizinine gidin:
   ```bash
   cd environments/dev
   ```

2. Terraform'u başlatın:
   ```bash
   terraform init
   ```

3. Plan oluşturun:
   ```bash
   terraform plan -var-file="dev.tfvars"
   ```

4. Kaynakları oluşturun:
   ```bash
   terraform apply -var-file="dev.tfvars"
   ```

5. Oluşturulan kaynakları temizlemek için:
   ```bash
   terraform destroy -var-file="dev.tfvars"
   ```

### Production Ortamı
1. `prod` dizinine gidin:
   ```bash
   cd environments/prod
   ```

2. Terraform'u başlatın:
   ```bash
   terraform init
   ```

3. Plan oluşturun:
   ```bash
   terraform plan -var-file="prod.tfvars"
   ```

4. Kaynakları oluşturun:
   ```bash
   terraform apply -var-file="prod.tfvars"
   ```

5. Oluşturulan kaynakları temizlemek için:
   ```bash
   terraform destroy -var-file="prod.tfvars"
   ```

## Outputs
- `vpc_id`: Oluşturulan VPC'nin ID'si.
- `subnet_id`: Oluşturulan Subnet'in ID'si.
- `instance_id`: EC2 instance ID'si.
- `instance_public_ip`: EC2 instance'ın public IP adresi.
