-- CreateTable
CREATE TABLE `Client` (
    `id` VARCHAR(191) NOT NULL,
    `razao_social` VARCHAR(191) NOT NULL,
    `nome_fantasia` VARCHAR(191) NOT NULL,
    `site` VARCHAR(191) NOT NULL,
    `cnpj_cpf` VARCHAR(191) NOT NULL,
    `insc_estadual` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `endereco_atendimento` VARCHAR(191) NOT NULL,
    `bairro` VARCHAR(191) NOT NULL,
    `cep` VARCHAR(191) NOT NULL,
    `cidade` VARCHAR(191) NOT NULL,
    `estado` VARCHAR(191) NOT NULL,
    `ddd` VARCHAR(191) NOT NULL,
    `fax` VARCHAR(191) NOT NULL,
    `telefone` VARCHAR(191) NOT NULL,
    `endereco_faturamento` VARCHAR(191) NOT NULL,
    `bairro_faturamento` VARCHAR(191) NOT NULL,
    `cep_faturamento` VARCHAR(191) NOT NULL,
    `cidade_faturamento` VARCHAR(191) NOT NULL,
    `estado_faturamento` VARCHAR(191) NOT NULL,
    `ddd_faturamento` VARCHAR(191) NOT NULL,
    `fax_faturamento` VARCHAR(191) NOT NULL,
    `telefone_faturamento` VARCHAR(191) NOT NULL,
    `responsavel_financeiro` VARCHAR(191) NOT NULL,
    `ddd_financeiro` VARCHAR(191) NOT NULL,
    `telefone_financeiro` VARCHAR(191) NOT NULL,
    `email_financeiro` VARCHAR(191) NOT NULL,
    `nome_representante` VARCHAR(191) NOT NULL,
    `estado_civil_representante` VARCHAR(191) NOT NULL,
    `profissao_representante` VARCHAR(191) NOT NULL,
    `rg_representante` VARCHAR(191) NOT NULL,
    `cpf_representante` VARCHAR(191) NOT NULL,
    `email_representante` VARCHAR(191) NOT NULL,
    `telefone_representante` VARCHAR(191) NOT NULL,
    `nascimento_representante` VARCHAR(191) NOT NULL,
    `email_boleto_notas` VARCHAR(191) NOT NULL,
    `nome_segundo_contato` VARCHAR(191) NOT NULL,
    `estado_civil_segundo_contato` VARCHAR(191) NOT NULL,
    `profissao_segundo_contato` VARCHAR(191) NOT NULL,
    `rg_segundo_contato` VARCHAR(191) NOT NULL,
    `cpf_segundo_contato` VARCHAR(191) NOT NULL,
    `email_segundo_contato` VARCHAR(191) NOT NULL,
    `telefone_segundo_contato` VARCHAR(191) NOT NULL,
    `nascimento_segundo_contato` VARCHAR(191) NOT NULL,
    `nome_terceiro_contato` VARCHAR(191) NOT NULL,
    `estado_civil_terceiro_contato` VARCHAR(191) NOT NULL,
    `profissao_terceiro_contato` VARCHAR(191) NOT NULL,
    `rg_terceiro_contato` VARCHAR(191) NOT NULL,
    `cpf_terceiro_contato` VARCHAR(191) NOT NULL,
    `email_terceiro_contato` VARCHAR(191) NOT NULL,
    `telefone_terceiro_contato` VARCHAR(191) NOT NULL,
    `nascimento_terceiro_contato` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Client_id_key`(`id`),
    UNIQUE INDEX `Client_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;