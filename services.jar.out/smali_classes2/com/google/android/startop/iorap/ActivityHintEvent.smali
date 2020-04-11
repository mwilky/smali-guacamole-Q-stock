.class public Lcom/google/android/startop/iorap/ActivityHintEvent;
.super Ljava/lang/Object;
.source "ActivityHintEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/ActivityHintEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/ActivityHintEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CANCELLED:I = 0x1

.field public static final TYPE_COMPLETED:I = 0x2

.field private static final TYPE_MAX:I = 0x3

.field public static final TYPE_POST_COMPLETED:I = 0x3

.field public static final TYPE_STARTED:I


# instance fields
.field public final activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/startop/iorap/ActivityHintEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/ActivityHintEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/ActivityHintEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/startop/iorap/ActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    iput-object p2, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-direct {p0}, Lcom/google/android/startop/iorap/ActivityHintEvent;->checkConstructorArguments()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    sget-object v0, Lcom/google/android/startop/iorap/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/startop/iorap/ActivityInfo;

    iput-object v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-direct {p0}, Lcom/google/android/startop/iorap/ActivityHintEvent;->checkConstructorArguments()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/ActivityHintEvent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/ActivityHintEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    const-string v1, "activityInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private equals(Lcom/google/android/startop/iorap/ActivityHintEvent;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    iget-object v1, p1, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/ActivityHintEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/ActivityHintEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/ActivityHintEvent;->equals(Lcom/google/android/startop/iorap/ActivityHintEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{type: %d, activityInfo: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/startop/iorap/ActivityHintEvent;->activityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/startop/iorap/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
