.class Lcom/android/settingslib/location/RecentLocationAccesses$1;
.super Ljava/lang/Object;
.source "RecentLocationAccesses.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/location/RecentLocationAccesses;->getAppListSorted()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/location/RecentLocationAccesses;


# direct methods
.method constructor <init>(Lcom/android/settingslib/location/RecentLocationAccesses;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationAccesses$1;->this$0:Lcom/android/settingslib/location/RecentLocationAccesses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/location/RecentLocationAccesses$Access;Lcom/android/settingslib/location/RecentLocationAccesses$Access;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->accessFinishTime:J

    iget-wide v2, p2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;->accessFinishTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    check-cast p2, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/location/RecentLocationAccesses$1;->compare(Lcom/android/settingslib/location/RecentLocationAccesses$Access;Lcom/android/settingslib/location/RecentLocationAccesses$Access;)I

    move-result p1

    return p1
.end method
