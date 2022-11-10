package com.model;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.entities.Register;
import com.helper.FactoryProvider;

public class BLManager {

	public static SessionFactory s = FactoryProvider.getFactory().getSessionFactory();

	public void saveregisterinfo(Register reg) {
		
		Session s1 = s.openSession();
		Transaction tx = s1.beginTransaction();
		s1.save(reg);
		tx.commit();
		s1.close();
	}

	public Register searchbyemailpass(String username, String userpassword) {
		
		Session s1  = s.openSession();
		Criteria criteria = s1.createCriteria(Register.class);
		criteria.add(Restrictions.eq("username",username));
		criteria.add(Restrictions.eq("userpassword",userpassword));
		Register reg = (Register)criteria.uniqueResult();
		return reg;
	}

}
