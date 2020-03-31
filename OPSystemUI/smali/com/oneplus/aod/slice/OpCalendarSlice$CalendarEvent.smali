.class Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;
.super Ljava/lang/Object;
.source "OpCalendarSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpCalendarSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarEvent"
.end annotation


# instance fields
.field public mDateStartTimeInMillis:J

.field public mID:I

.field public mLocation:Ljava/lang/String;

.field public mReminderTimeInMillis:J

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/aod/slice/OpCalendarSlice;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/slice/OpCalendarSlice;ILjava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->this$0:Lcom/oneplus/aod/slice/OpCalendarSlice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mID:I

    iput-object p3, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mTitle:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mDateStartTimeInMillis:J

    iput-object p6, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventIntervalInMinutes()I
    .locals 4

    iget-wide v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mDateStartTimeInMillis:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setReminderInMinutes(I)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v1, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mDateStartTimeInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    rsub-int/lit8 p1, p1, 0x0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/aod/slice/OpCalendarSlice$CalendarEvent;->mReminderTimeInMillis:J

    return-void
.end method
