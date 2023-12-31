import { Module } from '@nestjs/common';
import { ClientController } from './controller/client.controller';
import { ClientManagementUsecase } from './usecases/client-management-usecase';
import { InfrastructureModule } from 'src/infrastructure/infrastructure.module';
import { ContractController } from './controller/contract.controller';
import { ContractManagementUsecase } from './usecases/contract-management-usecase';
import { EntityFactoryService } from './factory/entity-factory.service';
import { ManageClientStatus } from './services/manage-client-status.service';

@Module({
  imports: [InfrastructureModule],
  controllers: [ClientController, ContractController],
  providers: [
    ManageClientStatus,
    ClientManagementUsecase,
    ContractManagementUsecase,
    EntityFactoryService,
  ],
})
export class ApplicationModule {}
