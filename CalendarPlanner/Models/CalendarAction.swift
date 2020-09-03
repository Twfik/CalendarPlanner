//
//  CalendarAction.swift
//  CalendarPlanner
//
//  Created by Сергей Горбачёв on 10.08.2020.
//  Copyright © 2020 Сергей Горбачёв. All rights reserved.
//

import UIKit
import FSCalendar

struct CalendarAction {
    
    static let shared = CalendarAction()

    func calendarHide(calendar: FSCalendar, button: UIButton) {
        
        calendar.setScope(.month, animated: true)
        button.setTitle(NSLocalizedString("Скрыть календарь", comment: "hide calendar"), for: .normal)
        
    }
    
    func calendarOpen(calendar: FSCalendar, button: UIButton) {
        
        calendar.setScope(.week, animated: true)
        button.setTitle(NSLocalizedString("Открыть календарь", comment: "open calendar"), for: .normal)
    }
}
