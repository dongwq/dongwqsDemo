package com.dongwq

class CommonFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                request.today = Calendar.instance.time
            }
            after = {
                
            }
            afterView = {
                
            }
        }
    }
    
}
