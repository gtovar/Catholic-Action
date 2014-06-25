namespace :menus do
  desc "Create navbar menu options and submenus with tree structure"

  task load: :environment do
    unless Rails.env.production?
    puts "======== Iniciando \n"
    Rake::Task["db:drop:all"].invoke
    Rake::Task["db:create:all"].invoke
    end
    Rake::Task["db:setup"].invoke

    Rake::Task["menus:quienes_somos"].invoke
    Rake::Task["menus:que_te_ofrecemos"].invoke
    Rake::Task["menus:insercion_en_la_pastoral"].invoke
    Rake::Task["menus:escuela_de_santidad"].invoke
    Rake::Task["menus:nuestros_pastores"].invoke
    Rake::Task["menus:nuestros_dirigentes"].invoke
    Rake::Task["menus:identidad_laical"].invoke
  end

  task quienes_somos: :environment do

    #Quines somos
    quienes_somos = Page.new
    quienes_somos.name = "Quienes somos"
    if quienes_somos.save
      puts "Quienes somos Root menu was created successully"
    end
    
    #Informacion General
    content = ""
    File.open(File.join(Rails.root,"lib","texts", "gobierno.txt")) do |f|
      f.each_line do |line|
        content << line
      end
    end
    informacion_gral = quienes_somos.children.new
    informacion_gral.name = "Información General"
    informacion_gral.content = content
    if informacion_gral.save
      puts "Submenu #{informacion_gral.name} agregado a #{informacion_gral.parent.name}"
    end


    #Historia
    historia = quienes_somos.children.new
    historia.name = "Historia"
    historia.content = %{}
    if historia.save
      puts "Sub menu #{historia.name} agregado a #{historia.parent.name}"
    end

    #Gobierno
    gobierno = quienes_somos.children.new
    gobierno.name = "Gobierno"
    gobierno.content = %{}
    if gobierno.save
      puts "Sub menu #{gobierno.name} agregado a #{gobierno.parent.name}"
    end
  end

  task que_te_ofrecemos: :environment do
    #Que te ofrecemos
    que_te_ofrecemos = Page.new
    que_te_ofrecemos.name = "Qué te ofrecemos"
    que_te_ofrecemos.content = %{
    }
    if que_te_ofrecemos.save
      puts "#{que_te_ofrecemos.name} Root menu was created successully"
    end
    
    #Espiritualidad laical
    espiritualidad_laical = que_te_ofrecemos.children.new
    espiritualidad_laical.name = "Espiritualidad laical"
    espiritualidad_laical.content = %{}
    if espiritualidad_laical.save
      puts "Submenu #{espiritualidad_laical.name} agregado a #{espiritualidad_laical.parent.name}"
    end

    #Formación integral
    formacion_integral = que_te_ofrecemos.children.new
    formacion_integral.name = "Formación Integral"
    formacion_integral.content = %{}
    if formacion_integral.save
      puts "Sub menu #{formacion_integral.name} agregado a #{formacion_integral.parent.name}"
    end

    #Apostolado organizado
    apostolado_organizado = que_te_ofrecemos.children.new
    apostolado_organizado.name = "Apostolado organizado"
    apostolado_organizado.content = %{}
    if apostolado_organizado.save
      puts "Sub menu #{apostolado_organizado.name} agregado a #{apostolado_organizado.parent.name}"
    end
  end


  task insercion_en_la_pastoral: :environment do
    #Que te ofrecemos
    insercion_en_la_pastoral = Page.new
    insercion_en_la_pastoral.name = "Inserción en la pastoral"
    insercion_en_la_pastoral.content = %{
    }
    if insercion_en_la_pastoral.save
      puts "#{insercion_en_la_pastoral.name} Root menu was created successully"
    end
    
    #Antecedentes
    antecedentes = insercion_en_la_pastoral.children.new
    antecedentes.name = "Antecedentes"
    antecedentes.content = %{}
    if antecedentes.save
      puts "Submenu #{antecedentes.name} agregado a #{antecedentes.parent.name}"
    end
    
    #Actualidad
    actualidad = insercion_en_la_pastoral.children.new
    actualidad.name = "Actualidad"
    actualidad.content = %{}
    if actualidad.save
      puts "Submenu #{actualidad.name} agregado a #{actualidad.parent.name}"
    end
  end


  task escuela_de_santidad: :environment do
    #Escuela de santidad
    escuela_de_santidad = Page.new
    escuela_de_santidad.name = "Escuela de santidad"
    escuela_de_santidad.content = %{
    }
    if escuela_de_santidad.save
      puts "#{escuela_de_santidad.name} Root menu was created successully"
    end

    #Santos
    santos = escuela_de_santidad.children.new
    santos.name = "santos"
    santos.content = %{}
    if santos.save
      puts "Submenu #{santos.name} agregado a #{santos.parent.name}"
    end

    #Beatos
    beatos = escuela_de_santidad.children.new
    beatos.name = "Beatos"
    beatos.content = %{}
    if beatos.save
      puts "Submenu #{beatos.name} agregado a #{beatos.parent.name}"
    end

    #Siervos de Dios
    siervos_de_Dios = escuela_de_santidad.children.new
    siervos_de_Dios.name = "Siervos de Dios"
    siervos_de_Dios.content = %{}
    if siervos_de_Dios.save
      puts "Submenu #{siervos_de_Dios.name} agregado a #{siervos_de_Dios.parent.name}"
    end

    #In Memoriam
    in_memoriam = escuela_de_santidad.children.new
    in_memoriam.name = "In memoriam"
    in_memoriam.content = %{}
    if in_memoriam.save
      puts "Submenu #{in_memoriam.name} agregado a #{in_memoriam.parent.name}"
    end


    #Reconocimiento
    reconocimiento = escuela_de_santidad.children.new
    reconocimiento.name = "reconocimiento"
    reconocimiento.content = %{}
    if reconocimiento.save
      puts "Submenu #{reconocimiento.name} agregado a #{reconocimiento.parent.name}"
    end
  end




  task nuestros_pastores: :environment do
    #Nuestros pastores
    nuestros_pastores = Page.new
    nuestros_pastores.name = "Nuestros pastores"
    nuestros_pastores.content = %{
    }
    if nuestros_pastores.save
      puts "#{nuestros_pastores.name} Root menu was created successully"
    end

    #Sumos Pontífices
    sumos = nuestros_pastores.children.new
    sumos.name = "Sumos Pontíces"
    sumos.content = %{}
    if sumos.save
      puts "Submenu #{sumos.name} agregado a #{sumos.parent.name}"
    end

    #Episcopado Mexicano
    episcopado_mexicano = nuestros_pastores.children.new
    episcopado_mexicano.name = "Episcopado Mexicano"
    episcopado_mexicano.content = %{}
    if episcopado_mexicano.save
      puts "Submenu #{episcopado_mexicano.name} agregado a #{episcopado_mexicano.parent.name}"
    end

    #Asistentes Eclesiásticos
    asistentes_eclesiasticos = nuestros_pastores.children.new
    asistentes_eclesiasticos.name = "asistentes_eclesiasticos"
    asistentes_eclesiasticos.content = %{}
    if asistentes_eclesiasticos.save
      puts "Submenu #{asistentes_eclesiasticos.name} agregado a #{asistentes_eclesiasticos.parent.name}"
    end
  end

  task nuestros_dirigentes: :environment do
    #Nuestros dirigentes
    nuestros_dirigentes = Page.new
    nuestros_dirigentes.name = "Nuestros dirigentes"
    nuestros_dirigentes.content = %{
    }
    if nuestros_dirigentes.save
      puts "#{nuestros_dirigentes.name} Root menu was created successully"
    end

    #Naturaleza
    naturaleza = nuestros_dirigentes.children.new
    naturaleza.name = "Naturaleza"
    naturaleza.content = %{}
    if naturaleza.save
      puts "Submenu #{naturaleza.name} agregado a #{naturaleza.parent.name}"
    end

    #Tipos de Dirigentes
    tipos_de_dirigentes = nuestros_dirigentes.children.new
    tipos_de_dirigentes.name = "Tipos de dirigentes"
    tipos_de_dirigentes.content = %{}
    if tipos_de_dirigentes.save
      puts "Submenu #{tipos_de_dirigentes.name} agregado a #{tipos_de_dirigentes.parent.name}"
    end

    #Presidentes nacionales
    presidentes_nacionales = nuestros_dirigentes.children.new
    presidentes_nacionales.name = "Presidentes nacionales"
    presidentes_nacionales.content = %{}
    if presidentes_nacionales.save
      puts "Submenu #{presidentes_nacionales.name} agregado a #{presidentes_nacionales.parent.name}"
    end
  end

  
  task identidad_laical: :environment do
    #Nuestros dirigentes
    identidad_laical = Page.new
    identidad_laical.name = "Identidad laical"
    identidad_laical.content = %{
    }
    if identidad_laical.save
      puts "#{identidad_laical.name} Root menu was created successully"
    end

    #Los signos externos
    signos = identidad_laical.children.new
    signos.name = "Los signos externos"
    signos.content = %{}
    if signos.save
      puts "Submenu #{signos.name} agregado a #{signos.parent.name}"
    end

    #Escudos
    escudos = identidad_laical.children.new
    escudos.name = "Escudos"
    escudos.content = %{}
    if escudos.save
      puts "Submenu #{escudos.name} agregado a #{escudos.parent.name}"
    end

    #Lema
    lema = identidad_laical.children.new
    lema.name = "lema"
    lema.content = %{}
    if lema.save
      puts "Submenu #{lema.name} agregado a #{lema.parent.name}"
    end
    
    #Bandera
    bandera = identidad_laical.children.new
    bandera.name = "Bandera"
    bandera.content = %{}
    if bandera.save
      puts "Submenu #{bandera.name} agregado a #{bandera.parent.name}"
    end

    #Himno
    himno = identidad_laical.children.new
    himno.name = "Himno"
    himno.content = %{}
    if himno.save
      puts "Submenu #{himno.name} agregado a #{himno.parent.name}"
    end

  end
end
