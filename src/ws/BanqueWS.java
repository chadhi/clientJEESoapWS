/**
 * BanqueWS.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package ws;

public interface BanqueWS extends java.rmi.Remote {
    public double convertToDh(double montant) throws java.rmi.RemoteException;
    public ws.Compte getCompte(java.lang.Long code) throws java.rmi.RemoteException;
    public ws.Compte[] listCompte() throws java.rmi.RemoteException;
}
