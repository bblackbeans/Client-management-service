import { PrismaService } from './services/prisma-adapter.service';
import { Module } from '@nestjs/common';
import { ClientRepository } from 'src/domain/repository/client.repository';
import { ClientRepositoryService } from './repositories/client-repository.service';
import { ContractRepository } from 'src/domain/repository/contract.repository';
import { ContractRepositoryService } from './repositories/contract-repository.service';
import { ClientFactoryService } from 'src/domain/factory/client.factory.service';

@Module({
  imports: [],
  controllers: [],
  providers: [
    PrismaService,
    ClientFactoryService,

    {
      provide: ClientRepository,
      useClass: ClientRepositoryService,
    },
    {
      provide: ContractRepository,
      useClass: ContractRepositoryService,
    },
  ],
  exports: [ClientRepository, ContractRepository],
})
export class InfrastructureModule {}
