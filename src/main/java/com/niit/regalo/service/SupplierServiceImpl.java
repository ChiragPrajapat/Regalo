package com.niit.regalo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.SupplierDAO;
import com.niit.regalo.model.Supplier;
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
	public void addSupplier(Supplier s) {
		this.supplierDao.addSupplier(s);
	}


	@Transactional
	public Supplier getSupplierBySupplier_Id(int supplier_id) {
		// TODO Auto-generated method stub
		return this.supplierDao.getSupplierBySupplier_Id(supplier_id);
	}
	
	@Transactional
	public void updateSupplier(Supplier s) {
		this.supplierDao.updateSupplier(s);
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
