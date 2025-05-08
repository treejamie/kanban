locals {
    repository_name = "kanban"
    github_owner = "treejamie"
}

variable "milestones" {
    type = map(object({
        title = string
        due_date = string
        description = string
    }))
    description = "Milestones, consider them to be the biggest deliverable unit."
}

variable "labels"{
    type = map(object({
        name = string
        color = string
    }))
    description = "The labels to tag the issues"
}

variable "issues" {
    type = list(object({
        title = string
        body = string
        labels = list(string)
        milestone = string
    }))
}