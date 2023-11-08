package tn.esprit.devops_project.services.Iservices;

import org.springframework.stereotype.Repository;
import tn.esprit.devops_project.entities.Supplier;

import java.util.List;
@Repository
public interface ISupplierService {

	List<Supplier> retrieveAllSuppliers();

	Supplier addSupplier(Supplier supplier);

	void deleteSupplier(Long id);

	Supplier updateSupplier(Supplier supplier);

	Supplier retrieveSupplier(Long id);

}
