///get_class_data()
return json_decode('
{
    "elizabeth" : {
        "name" : "Elizabeth",
        "health" : 10,
        "attack" : 8,
        "defense" : 8,
        "speed" : 9,
        "critical" : 25,
        "experience" : 0,
        "actions" : []
    },
    "spider" : {
        "name"          : "Spider",
        "health"        : 3,
        "attack"        : 5,
        "defense"       : 4,
        "speed"         : 10,
        "critical"      : 5,
        "experience"    : 25,
        "actions"       : ["attack", "defend"]
    },
    "gargoyle" : {
        "name"          : "Gargoyle",
        "health"        : 10,
        "attack"        : 4,
        "defense"       : 8,
        "speed"         : 4,
        "critical"      : 10,
        "experience"    : 100,
        "actions"       : ["sonar spell", "defend"]
    }
}');
