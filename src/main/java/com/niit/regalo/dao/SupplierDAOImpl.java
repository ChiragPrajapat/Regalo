package com.niit.regalo.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(SupplierDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * public void setSessionFactory(SessionFactory sf){ this.sessionFactory =
	 * sf; }
	 */

	@Transactional
	public void addSupplier(Supplier p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
		session.close();
		// logger.info("Supplier saved successfully, Supplier Details="+p);
	}

	@Transactional
	public void updateSupplier(Supplier p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(p);
		tx.commit();
		session.close();
		// logger.info("Supplier updated successfully, Supplier Details="+p);
	}

	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Supplier> supplierList = session.createQuery("from Supplier").list();
		session.close();
		return supplierList;
	}

	@Transactional
	public void removeSupplier(int id) {
		Session session = this.sessionFactory.openSession();
		Supplier p = (Supplier) session.load(Supplier.class, new Integer(id));
		Transaction tx = session.beginTransaction();
		if (null != p) {
			session.delete(p);
		}
		// logger.info("Supplier deleted successfully, supplier details="+p);
		tx.commit();
		session.close();
	}

	@Override
	public List<Supplier> listSuppliers() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Supplier> supplierList = session.createQuery("from Supplier").list();
		session.close();
		return supplierList;
	}

}