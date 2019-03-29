/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.periferiait.integracion;

import org.junit.Test;




/**
 *
 * @author jaime
 */
public class AritmeticaTest {
    
    public AritmeticaTest() {
    }
    
    
    @Test
    public void suma() {
        Aritmetica aritmetica=new Aritmetica();
        assert(aritmetica.suma(1, 1)==2);
    }
    
    
      @Test
    public void multiplicacion() {
        Aritmetica aritmetica=new Aritmetica();
        assert(aritmetica.multiplicacion(1, 1)==1);
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
}
