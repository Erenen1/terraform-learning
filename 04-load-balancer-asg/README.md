
# Load Balancer ve Auto Scaling Group ile Gelişmiş Altyapı

Bu proje, Terraform kullanarak AWS üzerinde Application Load Balancer (ALB), Auto Scaling Group (ASG) ve birden fazla EC2 instance oluşturmayı öğrenmek için tasarlanmıştır. ALB ile gelen trafik yönetilirken, ASG ile EC2 instance'larının otomatik ölçeklendirilmesi sağlanır.

## Hedefler
- ALB kullanarak gelen trafiği EC2 instance'larına dağıt.
- Auto Scaling Group ile dinamik ölçeklendirme yap.
- EC2 instance'larını dinamik olarak oluşturmak için Launch Template kullan.

## Gereksinimler
- Terraform'un yüklü olması.
- AWS CLI kullanılarak kimlik bilgilerinin ayarlanmış olması (`aws configure` ile).

## Proje Yapısı
```
04-load-balancer-asg/
├── modules/
│   ├── alb/                # ALB modülü
│   ├── asg/                # Auto Scaling Group modülü
│   ├── ec2/                # EC2 modülü
│   ├── vpc/                # VPC modülü
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
└── README.md
```

## Kullanım

1. Proje dizinine gidin:
   ```bash
   cd 04-load-balancer-asg
   ```

2. Terraform'u başlatın:
   ```bash
   terraform init
   ```

3. Plan oluşturun:
   ```bash
   terraform plan
   ```

4. Kaynakları oluşturun:
   ```bash
   terraform apply
   ```

5. Oluşturulan kaynakları temizlemek için:
   ```bash
   terraform destroy
   ```

## Outputs
- `lb_arn`: Load Balancer'ın ARN değeri.
- `target_group_arn`: Target Group'un ARN değeri.
- `asg_name`: Auto Scaling Group'un ismi.
