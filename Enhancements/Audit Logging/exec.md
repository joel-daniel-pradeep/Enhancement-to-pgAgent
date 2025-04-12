# 📸 Audit Logging Implementation - Proof of Execution
This document contains **screenshots** of SQL query outputs to **demonstrate** the correct working of the **Audit Logging feature**.

-------------------------------------
## **1️⃣ Checking the Audit Log Table (Before Action)
This query retrieves the audit log entries before any job actions have occurred.

```
SELECT * FROM pgagent.pga_job_audit_log;
```
✅ **Expected Output**:
The audit log table should be empty before any actions are performed.

📸 **Screenshot**:
![Log Table before any action ](https://github.com/user-attachments/assets/dc6f2209-e90d-4a75-b50a-2c87431e7e57)


## **2️⃣ Performing Job Actions
Perform job actions like creating, modifying, or deleting a job. For example, create a new job.


```
SELECT * FROM pgagent.pga_job_audit_log;
```
✅ **Expected Output**:
An entry should be added to the audit log table with event_type = CREATE.

📸 **Screenshot**:
![Log Table After Creation of a Job A](https://github.com/user-attachments/assets/237d3c60-0ac1-42a2-aa96-2c37d8806c5e)

## **3️⃣ Checking Audit Log for Job Action
Verifying that the correct action is logged after the job creation.

```
SELECT * FROM pgagent.pga_job_audit_log WHERE operation_type = 'CREATE';
```
✅ **Expected Output**:
The log entry should contain the job ID, event type (CREATE), timestamp, and user who performed the action.

📸 **Screenshot**:
 ![Log Table Query by Operation Type](https://github.com/user-attachments/assets/8223a9a2-7d54-4932-847d-efc80abea591)


## **4️⃣ Verifying Job Modification
Modify an existing job.

✅ **Expected Output**:
An entry should be added to the audit log table with event_type = MODIFY.

📸 **Screenshot**:
![image](https://github.com/user-attachments/assets/4aadf420-d1d5-4209-a913-3763171d908c)


## **5️⃣ Verifying Job Deletion
Delete an existing job.


✅ **Expected Output**:
An entry should be added to the audit log table with event_type = DELETE.

📸 **Screenshot**:
![Logging Job Deletion](https://github.com/user-attachments/assets/db01c7af-06b7-4b48-ab84-5f75017cbf98)


## **6️⃣ Verifying Job Execution
Trigger a job execution (e.g., a manual run).


✅ **Expected Output**:
An entry should be added to the audit log table with event_type = EXECUTE.

📸 **Screenshot**:
![Logging Job Execution both the starting and the ending of execution](https://github.com/user-attachments/assets/91bae1bc-0aec-46f8-ab81-66173138c2d8)



## **🎯 Conclusion:
The Audit Logging feature is working as expected, accurately logging job actions such as creation, modification, deletion, and execution.
Note: If the figures are not clear, please see the images in the outputs folder inside Audit Logging.

