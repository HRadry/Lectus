package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import java.util.Map;

public class LoginInterceptor implements Interceptor {

     private static final long serialVersionUID = 1L;

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        Map<String, Object> sessionAttributes = invocation
                .getInvocationContext().getSession();

        if (sessionAttributes == null || sessionAttributes.get("userName") == null) {
            return INPUT;
        } else {
            if (!((String) sessionAttributes.get("userName")).equals(null)) {
                return invocation.invoke();
            } else {
                return INPUT;
            }
            //return INPUT;
        }
        
    }
}
