package com.niit.regalo.service;

import java.util.List;
import com.niit.regalo.model.Supplier;

public interface SupplierService {

		public void addSupplier(Supplier s);
		public void updateSupplier(Supplier s);
		public Supplier getSupplierBySupplier_Id(int supplier_id);
		public List<Supplier> listSuppliers();
		public void removeSupplier(int supplier_id);
	}

	