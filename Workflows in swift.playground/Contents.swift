import UIKit

var str = "Hello, playground"

class StateManager {
    // I hate the naming - but it works for now whilst I feel through the issue
    var state = [State]()
}

protocol State {
    func nextState() -> State
    func previousState() -> State
}

class BaseState {
}

class ConfigurableState: BaseState, State {
    var stateName: String
    var nxtState: State
    var prevState: State
    
    init(customStateName: String, nextState: State , previousState: State) {
        stateName = customStateName
        nxtState = nextState
        prevState = previousState
    }
    
    func nextState() -> State {
        return nextState()
    }
    
    func previousState() -> State {
        return previousState()
    }
    
}

class AwaitingApprovalState: BaseState, State {
    
    let stateName = "Awaiting Approval"
    
    func nextState() -> State {
        <#code#>
    }
    
    func previousState() -> State {
        <#code#>
    }
    
}

class ApprovedState: BaseState, State {
    let stateName = "Approved"
    
    func nextState() -> State{
        return CompleteState()
    }
    
    func previousState() -> State{
        return AwaitingApprovalState()
    }
    
}

class DeniedState: BaseState, State {
    
    let stateName = "Denied"
    
    func nextState() -> State {
        <#code#>
    }
    
    func previousState() -> State {
        <#code#>
    }
    
    
}

class CompleteState: BaseState, State {
    
    let stateName = "Complete"
    
    func nextState() -> State {
        <#code#>
    }
    
    func previousState() -> State {
        <#code#>
    }
    
}


// Usage example
let configurableState = ConfigurableState(customStateName: "Edit In Progress", nextState:AwaitingApprovalState(), previousState:AwaitingApprovalState())

/*
 
 User
 
 */
