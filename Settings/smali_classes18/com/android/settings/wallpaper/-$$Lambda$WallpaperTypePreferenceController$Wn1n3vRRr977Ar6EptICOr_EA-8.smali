.class public final synthetic Lcom/android/settings/wallpaper/-$$Lambda$WallpaperTypePreferenceController$Wn1n3vRRr977Ar6EptICOr_EA-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wallpaper/-$$Lambda$WallpaperTypePreferenceController$Wn1n3vRRr977Ar6EptICOr_EA-8;->f$0:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wallpaper/-$$Lambda$WallpaperTypePreferenceController$Wn1n3vRRr977Ar6EptICOr_EA-8;->f$0:Landroidx/preference/Preference;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1}, Lcom/android/settings/wallpaper/WallpaperTypePreferenceController;->lambda$removeUselessExistingPreference$0(Landroidx/preference/Preference;Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method
