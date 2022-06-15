.class public final Lcom/etechd/l3mon/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etechd/l3mon/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "string"
.end annotation


# static fields
.field public static final app_name:I = 0x7f060001

.field public static final device_admin_label:I = 0x7f060002

.field public static final device_description:I = 0x7f060003

.field public static final status_bar_notification_info_overflow:I = 0x7f060000


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
