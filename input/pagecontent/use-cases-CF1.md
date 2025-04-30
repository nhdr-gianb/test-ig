### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

* For fields under **Part I - Member Information**, if `Patient is the member?` is true, all `Person` resources <span style="color:red">**SHOULD**</span> be changed to `Patient`. For example:
    
    ```
        Patient is the member:
            QuestionnaireResponse.item = true
        Name of Member (Last Name):
            Patient.name.family = "Smith"
    ```

    ```
        Patient is the member:
            QuestionnaireResponse.item = false
        Name of Member (Last Name):
            Person.name.family = "Smith"
    ```

---


<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>

<ul class="nav nav-tabs">

<li class="active">
    <a href="#">Content</a>
</li>

<li>
    <a href="CF1-mapping.html">Mappings</a>
</li>

<li>
    <a href="CF1-json.html">JSON</a>
</li>

</ul>

</html>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 1**

This can be viewed as an instance [CF1 Bundle](Bundle-ClaimsForm1.html) to also see downloadable XML, JSON, and TTL formats.

---

