package com.niit.regalo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.SupplierDAO;
import com.niit.regalo.model.Supplier;

@Service
@Transactional
public class SupplierServiceImpl implements SupplierService {
	@Autowired
	private SupplierDAO supplierDao;

	/*public void setSupplierDAO(Supplier supplier) {
		this.supplierDao = supplier;
	}*/

	@Transactional
	public void addSupplier(Supplier p) {
		this.supplierDao.addSupplier(p);
	}

	
	@Transactional
	public void updateSupplier(Supplier p) {
		this.supplierDao.updateSupplier(p);
	}

		@Transactional
	public List<Supplier> listSuppliers() {
		return this.supplierDao.listSuppliers();
	}

	
	@Transactional
	public void removeSupplier(int supplier_id) {
		this.supplierDao.removeSupplier(supplier_id);
	}


	

}
