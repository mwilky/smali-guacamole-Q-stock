.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;->f$0:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;->f$0:Landroid/app/AlertDialog;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->lambda$operatorAlertDialog$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
