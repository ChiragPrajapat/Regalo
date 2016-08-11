package com.niit.regalo.service;

import java.util.List;

import com.niit.regalo.model.Supplier;

public interface SupplierService {

		public void addSupplier(Supplier p);
		public void updateSupplier(Supplier p);
		public List<Supplier> listSuppliers();
		public void removeSupplier(int supplier_id);
	}

	