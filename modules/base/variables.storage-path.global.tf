variable "hci_storagepath" {
  type        = list(object({
    name = string
    path = string
  }))
  description = "The storage paths for HCI cluster"
  default = []
}
