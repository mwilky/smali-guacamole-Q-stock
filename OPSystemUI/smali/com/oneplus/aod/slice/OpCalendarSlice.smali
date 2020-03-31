.class public Lcom/oneplus/aod/slice/OpCalendarSlice;
.super Lcom/oneplus/aod/slice/OpSlice;
.source "OpCalendarSlice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;
    }
.end annotation


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCallback:Lcom/oneplus/aod/slice/OpSliceManager$Callback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/lang/String;

.field private mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

.field private final mEventIntervalInMin:I

.field private mEventUri:Landroid/net/Uri;

.field private final mMillisInMinute:I

.field private mReminderUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string v2, "allDay"

    const-string v3, "dtstart"

    const-string v4, "eventLocation"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/slice/OpCalendarSlice;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/oneplus/aod/slice/OpSlice;-><init>(Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V

    const-string v0, "dd/MM/yyyy hh:mm"

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mDateFormat:Ljava/lang/String;

    const/16 v0, 0x2d

    iput v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEventIntervalInMin:I

    const v0, 0xea60

    iput v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mMillisInMinute:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    sget v0, Lcom/android/systemui/R$drawable;->op_aod_slice_calendar:I

    iput v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIcon:I

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCallback:Lcom/oneplus/aod/slice/OpSliceManager$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEventUri:Landroid/net/Uri;

    sget-object p1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mReminderUri:Landroid/net/Uri;

    return-void
.end method

.method private getReminder(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mReminderUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "(event_id = ?)"

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "minutes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->setReminderInMinutes(I)V

    :cond_1
    return-void
.end method

.method private getSoonestEvent()V
    .locals 11

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEventUri:Landroid/net/Uri;

    sget-object v4, Lcom/oneplus/aod/slice/OpCalendarSlice;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "((hasAlarm = 1) AND (dtstart >= ?) AND (deleted != 1))"

    const-string v7, "dtstart LIMIT 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "dtstart"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "eventLocation"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    move-object v3, v10

    move-object v4, p0

    move v5, v1

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;-><init>(Lcom/oneplus/aod/slice/OpCalendarSlice;ILjava/lang/String;JLjava/lang/String;)V

    iput-object v10, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/oneplus/aod/slice/OpCalendarSlice;->getReminder(I)V

    :cond_1
    return-void
.end method

.method private updateEvent()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpCalendarSlice;->getSoonestEvent()V

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    iget-object v2, v0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mLocation:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->getEventIntervalInMinutes()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$plurals;->smart_aod_calendar_remain_time:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mRemark:Ljava/lang/String;

    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy hh:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    iget-wide v5, v3, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mDateStartTimeInMillis:J

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    iget-wide v5, v5, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mReminderTimeInMillis:J

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reminderTime = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", location = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->getEventIntervalInMinutes()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice;->mEvent:Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->getEventIntervalInMinutes()I

    move-result v0

    const/16 v2, 0x2d

    if-gt v0, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->updateUI()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/slice/OpSlice;->setActive(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleSetListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/aod/slice/OpSlice;->handleSetListening(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpCalendarSlice;->updateEvent()V

    :cond_0
    return-void
.end method

.method public handleTimeChanged()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/aod/slice/OpSlice;->handleTimeChanged()V

    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpCalendarSlice;->updateEvent()V

    return-void
.end method
