//
//  ViewController.swift
//  PracticaTableView
//
//  Created by Alumno on 11/3/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaALumnoController
        
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Jose Gonzalez", matricula: "9867", carrera: "Lic. en Administracion"))
        alumnos.append(Alumno(nombre: "Ana Martinez", matricula: "1752", carrera: "Lic. en Derecho"))
        alumnos.append(Alumno(nombre: "Luis Perez", matricula: "6284", carrera: "Lic. en Marca"))
        alumnos.append(Alumno(nombre: "Maria Campas", matricula: "8637", carrera: "Lic. en Gastronomia"))


    }


}
