
# Terraform Öğrenme Sürecimdeki Projeler

Bu repository, Terraform öğrenme sürecimde oluşturduğum çeşitli örnek projeleri ve yapılandırmaları içermektedir. Projeler, temel Terraform yapılarını anlamaktan başlayarak daha karmaşık altyapı otomasyonlarına kadar uzanmaktadır.

## Projeler

### 1. Temel EC2 ve Security Group Oluşturma
- Basit bir EC2 instance ve buna bağlı bir Security Group oluşturmayı öğrenmek için oluşturulmuştur.
- Güvenlik grubunda SSH ve HTTP izinleri tanımlanmıştır.

### 2. VPC, Subnet ve Internet Gateway Yapılandırması
- Özel bir VPC oluşturulmuş ve bu VPC'ye bağlı iki farklı Availability Zone'da subnetler tanımlanmıştır.
- Internet Gateway eklenerek subnetlerin internete erişimi sağlanmıştır.

### 3. Modüler Yapı ile EC2 ve Security Group
- EC2 instance ve buna bağlı Security Group, ayrı modüller halinde tasarlanmıştır.
- Modüler yapı sayesinde yeniden kullanılabilirlik sağlanmıştır.

### 4. Application Load Balancer ve Auto Scaling Group
- Application Load Balancer (ALB) ve Auto Scaling Group (ASG) yapılandırmaları yapılmıştır.
- ALB ile gelen trafik EC2 instance'larına dağıtılmış, ASG ile otomatik ölçeklendirme sağlanmıştır.