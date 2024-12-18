package co.kh.dev.student.control;
import co.kh.dev.student.action.Action;
import co.kh.dev.student.action.IdCheckAction;
import co.kh.dev.student.action.RegFormAction;
import co.kh.dev.student.action.ZipCheckAction;
import co.kh.dev.student.action.indexAction;

public class ActionFactory {
    private static ActionFactory factory;

    public static synchronized ActionFactory getInstance() {
        if(factory == null) {
            factory = new ActionFactory();
        }
        return factory;
    } 

    private ActionFactory() {}

    public Action getAction(String cmd) {
        Action action = null;
    
        switch (cmd) {
        case "/index.do":
            action = new indexAction();
            break;
        case "/regForm.do":
        	action = new RegFormAction();
        	break;
        case "/idCheck.do":
        	action = new IdCheckAction();
        	break;
        case "/zipCheck.do":
        	action = new ZipCheckAction();
        	break;
            /*   case "/login.do":
            action = new LoginFormAction();
            break;
        case "/loginProc.do":
            action = new LoginProcAction();
            break;
        case "/logout.do":
            action = new LogoutAction();
            break;
        case "/regForm.do":
            action = new RegFormAction();
            break;
        case "/regProc.do":
            action = new RegProcAction();
            break;
        case "/modifyForm.do":
            action = new ModifyFormAction();
            break;
        case "/modifyProc.do":
            action = new ModifyProcAction();
            break;
        case "/deleteForm.do":
            action = new DeleteFormAction();
            break;
        case "/deleteProc.do":
            action = new DeleteProcAction();
            break;
        case "/idCheck.do":
            action = new IdCheckAction();
            break;
        case "/zipCheck.do":
            action = new ZipCheckAction();
            break;
             */
        default:
            action = new indexAction();
            break;
        }
        return action;
    }


}
