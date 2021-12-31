from django.contrib import admin

from booking.form import BookingUpdateForm, ImportBookingForm
from booking.models import Booking


@admin.register(Booking)
class BookingAdmin(admin.ModelAdmin):
    add_form = ImportBookingForm
    form = BookingUpdateForm

    readonly_fields = ('id',)

    def get_form(self, request, obj=None, **kwargs):
        defaults = {}

        if not obj:
            defaults['form'] = self.add_form
            defaults['fields'] = defaults['form'].Meta.fields

        defaults.update(kwargs)

        return super().get_form(request, obj, **defaults)
