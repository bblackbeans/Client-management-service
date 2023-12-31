/* eslint-disable @typescript-eslint/no-unused-vars */
import {
  Body,
  Controller,
  Delete,
  Get,
  Post,
  Put,
  UsePipes,
} from '@nestjs/common';
import { ZodValidationPipe } from '../pipes/zod-validation.pipe';
import { ContractRegistrationDto } from '../dtos/contract-registration.dto';
import { ContractManagementUsecase } from '../usecases/contract-management-usecase';

// DRIVING ADAPTER
@Controller('contracts')
export class ContractController {
  constructor(
    private readonly contractManagementUsecase: ContractManagementUsecase,
  ) {}

  // // RETURN ALL CLIENTS
  // @Get()
  // getAllClients() {
  //   return this.clientManagementUsecase.findAll();
  // }

  // // GET CLIENT BY ID
  // @Get(':id')
  // getClientById(@Body() clientRegistrationDto: ClientRegistrationDto) {
  //   return this.clientManagementUsecase.create(clientRegistrationDto);
  // }

  // CREATE A CLIENT
  @Post('registration')

  // VALIDATION PIPE
  @UsePipes(new ZodValidationPipe(ContractRegistrationDto))
  async registerContract(
    @Body() contractRegistration: (typeof ContractRegistrationDto)['_input'],
  ) {
    return await this.contractManagementUsecase.create(contractRegistration);
  }

  // // UPDATE CLIENT
  // @Put()
  // updateClient(@Body() clientRegistrationDto: ClientRegistrationDto) {
  //   return this.clientManagementUsecase.create(clientRegistrationDto);
  // }

  // // DELETE CLIENT
  // @Delete()
  // deleteClient(@Body() clientRegistrationDto: ClientRegistrationDto) {
  //   return this.clientManagementUsecase.create(clientRegistrationDto);
  // }
}
