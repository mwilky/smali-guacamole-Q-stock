.class Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/IntentTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDrawableIcon"
.end annotation


# instance fields
.field private final mPackage:Ljava/lang/String;

.field private final mResId:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/IntentTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    iget p0, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/IntentTile;->access$100(Lcom/android/systemui/qs/tiles/IntentTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading package drawable pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "PackageDrawableIcon[pkg=%s,id=0x%08x]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
