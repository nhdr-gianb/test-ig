### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

* Encounter.reasonCode <span style="color:red">**SHALL**</span> be supported if `Patient Disposition` is *Transferred/Referred*.

* **ICD 10 or RVS Code** field will either be `Condition.code` or `Procedure.code` respectively. If the data fits in `Procedure.code`, you <span style="color:red">**SHOULD**</span> use a separate resource as `Procedure.code` has a maximum cardinality of 1.

---


<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>

<ul class="nav nav-tabs">

<li class="active">
    <a href="#">Content</a>
</li>

<li>
    <a href="CF2-mapping.html">Mappings</a>
</li>

<li>
    <a href="CF2-json.html">JSON</a>
</li>

</ul>

</html>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 2**

This can be viewed as an instance [CF2 Bundle](Bundle-ClaimsForm2.html) to also see downloadable XML, JSON, and TTL formats.

---

