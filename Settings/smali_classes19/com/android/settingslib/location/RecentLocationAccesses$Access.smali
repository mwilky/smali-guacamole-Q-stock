.class public Lcom/android/settingslib/location/RecentLocationAccesses$Access;
.super Ljava/lang/Object;
.source "RecentLocationAccesses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/RecentLocationAccesses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Access"
.end annotation


# instance fields
.field public final accessFinishTime:J

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->userHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->label:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->contentDescription:Ljava/lang/CharSequence;

    iput-wide p6, p0, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->accessFinishTime:J

    return-void
.end method
