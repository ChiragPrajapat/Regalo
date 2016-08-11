package com.niit.regalo.dao;

import java.util.List;

import com.niit.regalo.model.Supplier;

public interface SupplierDAO {

		public void addSupplier(Supplier p);
		public void updateSupplier(Supplier p);
		public List<Supplier> listSuppliers();
		public void removeSupplier(int supplier_id);
	}
