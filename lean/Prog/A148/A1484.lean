import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A148400: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148400, there is no canonical definition to state claims against.
-/

/-! ## A148400.P7633651934121239652

`A008621(3*A128729(n))`
-/

namespace A148400.P7633651934121239652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (3 * A128729 n).toNat

end

end A148400.P7633651934121239652

/-! ## A148400.P18254757157826420523

`A052836(n)+val(A062572(2*n+1), 2)`
-/

namespace A148400.P18254757157826420523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052836 n + (SequenceMachineLib.valuation (A062572 (2 * n + 1)).toNat 2 : ℤ)

end

end A148400.P18254757157826420523

/-! ## A148400.P14922291556378991044

`A052836(n)+A000007(A052530(n))`
-/

namespace A148400.P14922291556378991044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052836 n + A000007 (A052530 n).toNat

end

end A148400.P14922291556378991044

/-! ## A148400.P18402982730829310624

`A052836(n)+A002656(A059738(n))`
-/

namespace A148400.P18402982730829310624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052836 n + A002656 (A059738 n).toNat

end

end A148400.P18402982730829310624

/-!
# A148401: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148401, there is no canonical definition to state claims against.
-/

/-! ## A148401.P14500240390845313863

`∑[A008676(Δ[A300678(n+1)])]`
-/

namespace A148401.P14500240390845313863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148401.P14500240390845313863

/-! ## A148401.P10272797135028241277

`A326669(A208062(n))`
-/

namespace A148401.P10272797135028241277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (A208062 n).toNat

end

end A148401.P10272797135028241277

/-! ## A148401.P7801150919649539197

`A333483(A276720(n))-1`
-/

namespace A148401.P7801150919649539197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (A276720 n).toNat - 1

end

end A148401.P7801150919649539197

/-!
# A148402: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148402, there is no canonical definition to state claims against.
-/

/-! ## A148402.P5968409449739899290

`A350799(A334250(n))`
-/

namespace A148402.P5968409449739899290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A334250 n).toNat

end

end A148402.P5968409449739899290

/-! ## A148402.P15491575355486399967

`A226080(A036469(n²))`
-/

namespace A148402.P15491575355486399967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A036469 (n ^ 2)).toNat

end

end A148402.P15491575355486399967

/-! ## A148402.P2804921575582201546

`A171217(A301700(n+2))`
-/

namespace A148402.P2804921575582201546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171217 (A301700 (n + 2)).toNat

end

end A148402.P2804921575582201546

/-!
# A148403: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148403, there is no canonical definition to state claims against.
-/

/-! ## A148403.P12067859468074991861

`A358637(A104993(n))`
-/

namespace A148403.P12067859468074991861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A104993 n).toNat

end

end A148403.P12067859468074991861

/-! ## A148403.P14305347209083163044

`A358637(A192656(n))`
-/

namespace A148403.P14305347209083163044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A192656 n).toNat

end

end A148403.P14305347209083163044

/-! ## A148403.P10808189164972581303

`A358637(A223940(n))`
-/

namespace A148403.P10808189164972581303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A223940 n).toNat

end

end A148403.P10808189164972581303

/-!
# A148404: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148404, there is no canonical definition to state claims against.
-/

/-! ## A148404.P15162547690861675347

`A087823(A034234(n))`
-/

namespace A148404.P15162547690861675347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087823 (A034234 n).toNat

end

end A148404.P15162547690861675347

/-! ## A148404.P18440395824107135358

`∑[A324965(A287227(n))]-n`
-/

namespace A148404.P18440395824107135358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A287227 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A148404.P18440395824107135358

/-! ## A148404.P5941361564261320905

`A100196(A053195(n)+A000255(n))`
-/

namespace A148404.P5941361564261320905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A053195 n + A000255 n).toNat

end

end A148404.P5941361564261320905

/-!
# A148405: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148405, there is no canonical definition to state claims against.
-/

/-! ## A148405.P5307264314631607527

`A154099(A149801(n))`
-/

namespace A148405.P5307264314631607527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A149801 n).toNat

end

end A148405.P5307264314631607527

/-! ## A148405.P7811475428152310332

`A154099(A149802(n))`
-/

namespace A148405.P7811475428152310332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A149802 n).toNat

end

end A148405.P7811475428152310332

/-! ## A148405.P15025141493250419429

`A371587(A149504(n))`
-/

namespace A148405.P15025141493250419429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A149504 n).toNat

end

end A148405.P15025141493250419429

/-!
# A148406: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148406, there is no canonical definition to state claims against.
-/

/-! ## A148406.P2041817594804984088

`A148407(A073788(n))`
-/

namespace A148406.P2041817594804984088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148407 (A073788 n).toNat

end

end A148406.P2041817594804984088

/-! ## A148406.P9358750196645734723

`A148407(A171596(n))`
-/

namespace A148406.P9358750196645734723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148407 (A171596 n).toNat

end

end A148406.P9358750196645734723

/-! ## A148406.P10513391453809183993

`A175092(A182901(n))`
-/

namespace A148406.P10513391453809183993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175092 (A182901 n).toNat

end

end A148406.P10513391453809183993

/-!
# A148407: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148407, there is no canonical definition to state claims against.
-/

/-! ## A148407.P7306667442752755521

`A148392(n)+A131433(A128718(n+1))`
-/

namespace A148407.P7306667442752755521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148392 n + A131433 (A128718 (n + 1)).toNat

end

end A148407.P7306667442752755521

/-! ## A148407.P11897236520379202225

`A131433(A128718(n+1))+A008679(7*A148830(n))`
-/

namespace A148407.P11897236520379202225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131433 (A128718 (n + 1)).toNat + A008679 (7 * A148830 n).toNat

end

end A148407.P11897236520379202225

/-! ## A148407.P14510421147713911181

`A131433(A128718(n+1))+A008612(9*A109263(n))`
-/

namespace A148407.P14510421147713911181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131433 (A128718 (n + 1)).toNat + A008612 (9 * A109263 n).toNat

end

end A148407.P14510421147713911181

/-! ## A148407.P7328555805334266223

`A131433(A128718(n+1))+A097992(9*A109263(n))`
-/

namespace A148407.P7328555805334266223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131433 (A128718 (n + 1)).toNat + A097992 (9 * A109263 n).toNat

end

end A148407.P7328555805334266223

/-!
# A148408: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148408, there is no canonical definition to state claims against.
-/

/-! ## A148408.P13964067677340689954

`A088004(A150144(n))`
-/

namespace A148408.P13964067677340689954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A150144 n).toNat

end

end A148408.P13964067677340689954

/-! ## A148408.P2712514957361578476

`A129843(A397302(n))`
-/

namespace A148408.P2712514957361578476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129843 (A397302 n).toNat

end

end A148408.P2712514957361578476

/-! ## A148408.P6647740058335691109

`A390395(A193111(n))`
-/

namespace A148408.P6647740058335691109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A193111 n).toNat

end

end A148408.P6647740058335691109

/-!
# A148409: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148409, there is no canonical definition to state claims against.
-/

/-! ## A148409.P11509135404926550627

`A148456(n)-A188037(A148481(n+1))`
-/

namespace A148409.P11509135404926550627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148456 n - A188037 (A148481 (n + 1)).toNat

end

end A148409.P11509135404926550627

/-! ## A148409.P3734905200447787050

`A148456(n)-A188037(A148482(n+1))`
-/

namespace A148409.P3734905200447787050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148456 n - A188037 (A148482 (n + 1)).toNat

end

end A148409.P3734905200447787050

/-! ## A148409.P4363741572776578287

`A008616(xor(A124499(n), A196787(2*(n+1))))`
-/

namespace A148409.P4363741572776578287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A124499 n) (A196787 (2 * (n + 1)))).toNat

end

end A148409.P4363741572776578287

/-!
# A148410: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148410, there is no canonical definition to state claims against.
-/

/-! ## A148410.P13885463489118701237

`A262868(A325298(n+1))`
-/

namespace A148410.P13885463489118701237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A325298 (n + 1)).toNat

end

end A148410.P13885463489118701237

/-! ## A148410.P5458197773187455695

`A356075(A032200(n+1))`
-/

namespace A148410.P5458197773187455695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356075 (A032200 (n + 1)).toNat

end

end A148410.P5458197773187455695

/-! ## A148410.P17255492659284682631

`A376635(A112556(n+1))`
-/

namespace A148410.P17255492659284682631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A112556 (n + 1)).toNat

end

end A148410.P17255492659284682631

/-!
# A148411: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148411, there is no canonical definition to state claims against.
-/

/-! ## A148411.P16130981747694306548

`A008617(A247289(n+2)+A190915(n+3))`
-/

namespace A148411.P16130981747694306548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A247289 (n + 2) + A190915 (n + 3)).toNat

end

end A148411.P16130981747694306548

/-! ## A148411.P16813534859626218465

`A008679(A037314(n+2)+A006358(n))-A215222(n+2)²`
-/

namespace A148411.P16813534859626218465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A037314 (n + 2) + A006358 n).toNat - A215222 (n + 2) ^ 2

end

end A148411.P16813534859626218465

/-! ## A148411.P2672067810027587418

`A108141(A071738(n))`
-/

namespace A148411.P2672067810027587418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A071738 n).toNat

end

end A148411.P2672067810027587418

/-!
# A148412: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148412, there is no canonical definition to state claims against.
-/

/-! ## A148412.P9909477760252462020

`A097992(Δ[A029889(n)])`
-/

namespace A148412.P9909477760252462020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (f1 (n + 1) - f1 n).toNat

end

end A148412.P9909477760252462020

/-! ## A148412.P8259538655627094157

`A076885(A048118(n+1))`
-/

namespace A148412.P8259538655627094157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A048118 (n + 1)).toNat

end

end A148412.P8259538655627094157

/-! ## A148412.P12682041882109016564

`A076885(A048117(n+2))`
-/

namespace A148412.P12682041882109016564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A048117 (n + 2)).toNat

end

end A148412.P12682041882109016564

/-! ## A148412.P11149153539310365784

`A008615(Δ[A029889(n)]+4)`
-/

namespace A148412.P11149153539310365784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n + 4).toNat

end

end A148412.P11149153539310365784

/-!
# A148413: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148413, there is no canonical definition to state claims against.
-/

/-! ## A148413.P10990826178301845939

`A171481(A372531(n+2))`
-/

namespace A148413.P10990826178301845939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171481 (A372531 (n + 2)).toNat

end

end A148413.P10990826178301845939

/-! ## A148413.P2373550730547710261

`∑[A156715(a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A148413.P2373550730547710261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A156715 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148413.P2373550730547710261

/-! ## A148413.P12298580480737068758

`A194640(A148841(n))`
-/

namespace A148413.P12298580480737068758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A148841 n).toNat

end

end A148413.P12298580480737068758

/-!
# A148414: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148414, there is no canonical definition to state claims against.
-/

/-! ## A148414.P17353520815717549277

`A083382(4^n+7)`
-/

namespace A148414.P17353520815717549277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (4 ^ n + 7)

end

end A148414.P17353520815717549277

/-! ## A148414.P6758155191856657080

`A194640(A148842(n))`
-/

namespace A148414.P6758155191856657080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A148842 n).toNat

end

end A148414.P6758155191856657080

/-! ## A148414.P219939327549057109

`A347655(A192981(n))`
-/

namespace A148414.P219939327549057109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A192981 n).toNat

end

end A148414.P219939327549057109

/-!
# A148415: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148415, there is no canonical definition to state claims against.
-/

/-! ## A148415.P11113525197272496465

`A008611(A057602(n+1)+A006095(n))`
-/

namespace A148415.P11113525197272496465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A057602 (n + 1) + A006095 n).toNat

end

end A148415.P11113525197272496465

/-! ## A148415.P9546151552651063130

`A115732(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A148415.P9546151552651063130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A115732 (a (n - 1) ^ 2).toNat

end

end A148415.P9546151552651063130

/-! ## A148415.P4090583091472572592

`A114147(A124380(n))`
-/

namespace A148415.P4090583091472572592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114147 (A124380 n).toNat

end

end A148415.P4090583091472572592

/-!
# A148416: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148416, there is no canonical definition to state claims against.
-/

/-! ## A148416.P3042295539442410506

`A343265(n)+A008611(A149438(n))`
-/

namespace A148416.P3042295539442410506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343265 n + A008611 (A149438 n).toNat

end

end A148416.P3042295539442410506

/-! ## A148416.P8131078735475851576

`xor(A002264(A076024(n)), A027960(n))`
-/

namespace A148416.P8131078735475851576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002264 (A076024 n).toNat) (A027960 n)

end

end A148416.P8131078735475851576

/-! ## A148416.P11914886961636313647

`A020913(n+1)+A008611(A149438(n))`
-/

namespace A148416.P11914886961636313647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (n + 1) + A008611 (A149438 n).toNat

end

end A148416.P11914886961636313647

/-! ## A148416.P11597506936251542968

`A029115(n+2)+A008611(A149438(n))`
-/

namespace A148416.P11597506936251542968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 (n + 2) + A008611 (A149438 n).toNat

end

end A148416.P11597506936251542968

/-!
# A148417: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148417, there is no canonical definition to state claims against.
-/

/-! ## A148417.P1687926994666839938

`or(A059806(A148395(n)), A148395(n))`
-/

namespace A148417.P1687926994666839938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059806 (A148395 n).toNat) (A148395 n)

end

end A148417.P1687926994666839938

/-! ## A148417.P355571227645900021

`A378150(A148436(n+1))+A148395(n)`
-/

namespace A148417.P355571227645900021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378150 (A148436 (n + 1)).toNat + A148395 n

end

end A148417.P355571227645900021

/-! ## A148417.P320964143709095500

`or(A001221(A338729(n)-floor(γ*n)-char[7]), A148395(n))`
-/

namespace A148417.P320964143709095500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A338729 n - ⌊Real.eulerMascheroniConstant * (n : ℝ)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat) (A148395 n)

end

end A148417.P320964143709095500

/-! ## A148417.P11487735931248823013

`or(A001221(ceil(A318229(n+1)/sqrt(5))-char[7]), A148395(n))`
-/

namespace A148417.P11487735931248823013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (⌈(A318229 (n + 1) : ℝ) / Real.sqrt (5 : ℝ)⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat) (A148395 n)

end

end A148417.P11487735931248823013

/-!
# A148418: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148418, there is no canonical definition to state claims against.
-/

/-! ## A148418.P12773800076196566378

`A220413(A160128(n))`
-/

namespace A148418.P12773800076196566378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A160128 n).toNat

end

end A148418.P12773800076196566378

/-! ## A148418.P8159798679938042367

`A380751(A150638(n))`
-/

namespace A148418.P8159798679938042367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380751 (A150638 n).toNat

end

end A148418.P8159798679938042367

/-! ## A148418.P9998315693313251154

`A220413(A210985(n+1))`
-/

namespace A148418.P9998315693313251154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A210985 (n + 1)).toNat

end

end A148418.P9998315693313251154

/-!
# A148419: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148419, there is no canonical definition to state claims against.
-/

/-! ## A148419.P8061700627013721329

`A261585(A278815(n))+A129722(n)`
-/

namespace A148419.P8061700627013721329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A278815 n).toNat + A129722 n

end

end A148419.P8061700627013721329

/-! ## A148419.P9845731799015301407

`A180980(A052910(n+1))`
-/

namespace A148419.P9845731799015301407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180980 (A052910 (n + 1)).toNat

end

end A148419.P9845731799015301407

/-! ## A148419.P9169922542833376459

`A287671(n)+A277899((2^n-1)*abs(1-n)!)`
-/

namespace A148419.P9169922542833376459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287671 n + A277899 (((2 ^ n : ℤ) - 1) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)).toNat

end

end A148419.P9169922542833376459

/-!
# A148420: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148420, there is no canonical definition to state claims against.
-/

/-! ## A148420.P8732198349254117158

`A032132(n+1)-A299202(A032101(n+1))`
-/

namespace A148420.P8732198349254117158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032132 (n + 1) - A299202 (A032101 (n + 1)).toNat

end

end A148420.P8732198349254117158

/-! ## A148420.P6051856803183195083

`A165084(∑[C(n, 3)+4])`
-/

namespace A148420.P6051856803183195083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165084 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148420.P6051856803183195083

/-! ## A148420.P18156834274133959353

`A120797(A101892(n))`
-/

namespace A148420.P18156834274133959353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120797 (A101892 n).toNat

end

end A148420.P18156834274133959353

/-!
# A148421: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148421, there is no canonical definition to state claims against.
-/

/-! ## A148421.P1618413726870755778

`∑[A055086(A095268(n)²)]`
-/

namespace A148421.P1618413726870755778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A095268 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148421.P1618413726870755778

/-! ## A148421.P27113318862921214

`∑[A316355(A095268(n)²)]`
-/

namespace A148421.P27113318862921214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A095268 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148421.P27113318862921214

/-! ## A148421.P15201215841952296917

`A140114(A144188(n)+A000108(n))`
-/

namespace A148421.P15201215841952296917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (A144188 n + A000108 n).toNat

end

end A148421.P15201215841952296917

/-!
# A148422: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148422, there is no canonical definition to state claims against.
-/

/-! ## A148422.P16024997263818664057

`A008621(A270929(n+1)+A001353(n))`
-/

namespace A148422.P16024997263818664057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A270929 (n + 1) + A001353 n).toNat

end

end A148422.P16024997263818664057

/-! ## A148422.P13068127183354864539

`A129832(A239075(n))`
-/

namespace A148422.P13068127183354864539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129832 (A239075 n).toNat

end

end A148422.P13068127183354864539

/-! ## A148422.P16335392182550974557

`A129832(A327471(n))`
-/

namespace A148422.P16335392182550974557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129832 (A327471 n).toNat

end

end A148422.P16335392182550974557

/-!
# A148423: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148423, there is no canonical definition to state claims against.
-/

/-! ## A148423.P9770486100288955056

`A129607(A148461(n))`
-/

namespace A148423.P9770486100288955056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A148461 n).toNat

end

end A148423.P9770486100288955056

/-! ## A148423.P14881461332019543714

`A103221(A217233(n))+A068398(n)-char[3]`
-/

namespace A148423.P14881461332019543714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A217233 n).toNat + A068398 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148423.P14881461332019543714

/-! ## A148423.P9611376546371898103

`A289207(n)+A026806(A217233(n))-char[3]`
-/

namespace A148423.P9611376546371898103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A026806 (A217233 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148423.P9611376546371898103

/-! ## A148423.P1848396113215042271

`A289120(A001045(n))+A261585(A102434(n+1))`
-/

namespace A148423.P1848396113215042271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 (A001045 n).toNat + A261585 (A102434 (n + 1)).toNat

end

end A148423.P1848396113215042271

/-!
# A148424: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148424, there is no canonical definition to state claims against.
-/

/-! ## A148424.P3224910023020487505

`A178210(A148410(n))`
-/

namespace A148424.P3224910023020487505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A148410 n).toNat

end

end A148424.P3224910023020487505

/-! ## A148424.P3328128918028431119

`A005041(Δ[Δ[A001349(n)]])`
-/

namespace A148424.P3328128918028431119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A148424.P3328128918028431119

/-! ## A148424.P15878842146703884473

`A214327(floor(C(2*n, n)/2^n))+A148423(n)`
-/

namespace A148424.P15878842146703884473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214327 ⌊(Nat.choose (2 * n) n : ℚ) / (2 ^ n : ℚ)⌋.toNat + A148423 n

end

end A148424.P15878842146703884473

/-!
# A148425: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148425, there is no canonical definition to state claims against.
-/

/-! ## A148425.P5478257340408437978

`A130446(A148423(n))`
-/

namespace A148425.P5478257340408437978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A148423 n).toNat

end

end A148425.P5478257340408437978

/-! ## A148425.P15250784785909271368

`A297788(A030814(n+1))-1`
-/

namespace A148425.P15250784785909271368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297788 (A030814 (n + 1)).toNat - 1

end

end A148425.P15250784785909271368

/-! ## A148425.P3661589680576932429

`A054404(A149284(n)+1+n)`
-/

namespace A148425.P3661589680576932429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A149284 n + 1 + (n : ℤ)).toNat

end

end A148425.P3661589680576932429

/-!
# A148426: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148426, there is no canonical definition to state claims against.
-/

/-! ## A148426.P25044009524804537

`A008621(A034008(n)*A214826(n))`
-/

namespace A148426.P25044009524804537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A034008 n * A214826 n).toNat

end

end A148426.P25044009524804537

/-! ## A148426.P2867321695216198005

`A115630(A148476(n))`
-/

namespace A148426.P2867321695216198005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A148476 n).toNat

end

end A148426.P2867321695216198005

/-! ## A148426.P9157097153453702202

`A209081(A148874(n))`
-/

namespace A148426.P9157097153453702202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A148874 n).toNat

end

end A148426.P9157097153453702202

/-!
# A148427: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148427, there is no canonical definition to state claims against.
-/

/-! ## A148427.P1171809214462528866

`A237271(A157311(n))+A001591(2*n+1)`
-/

namespace A148427.P1171809214462528866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A157311 n).toNat + A001591 (2 * n + 1)

end

end A148427.P1171809214462528866

/-! ## A148427.P8419603984644238882

`A329382(A337888(n+2))+A001591(2*n+1)`
-/

namespace A148427.P8419603984644238882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A337888 (n + 2)).toNat + A001591 (2 * n + 1)

end

end A148427.P8419603984644238882

/-! ## A148427.P3779506020932975697

`A108141(A148477(n))`
-/

namespace A148427.P3779506020932975697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148477 n).toNat

end

end A148427.P3779506020932975697

/-!
# A148428: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148428, there is no canonical definition to state claims against.
-/

/-! ## A148428.P10804629062276436752

`A181160(A084635(n))`
-/

namespace A148428.P10804629062276436752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (A084635 n).toNat

end

end A148428.P10804629062276436752

/-! ## A148428.P6477035764364750410

`A181160(A107597(n))`
-/

namespace A148428.P6477035764364750410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (A107597 n).toNat

end

end A148428.P6477035764364750410

/-! ## A148428.P2430482886822347965

`A181160(A257300(n))`
-/

namespace A148428.P2430482886822347965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (A257300 n).toNat

end

end A148428.P2430482886822347965

/-!
# A148429: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148429, there is no canonical definition to state claims against.
-/

/-! ## A148429.P17716659318450287739

`A097992(A150226(n)+A122983(n))`
-/

namespace A148429.P17716659318450287739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A150226 n + A122983 n).toNat

end

end A148429.P17716659318450287739

/-! ## A148429.P17702682497555429837

`and(A112689(A155116(n)), A212029(n))`
-/

namespace A148429.P17702682497555429837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112689 (A155116 n).toNat) (A212029 n)

end

end A148429.P17702682497555429837

/-! ## A148429.P3150647513456544897

`ceil(A005864(2*n+3)/4)`
-/

namespace A148429.P3150647513456544897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005864 (2 * n + 3) : ℚ) / 4⌉

end

end A148429.P3150647513456544897

/-!
# A148430: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148430, there is no canonical definition to state claims against.
-/

/-! ## A148430.P15384573982765619298

`A045917(A032066(2*n+3)+3)`
-/

namespace A148430.P15384573982765619298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A032066 (2 * n + 3) + 3).toNat

end

end A148430.P15384573982765619298

/-!
# A148431: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148431, there is no canonical definition to state claims against.
-/

/-! ## A148431.P18338571697620674001

`A178210(A148421(n))`
-/

namespace A148431.P18338571697620674001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A148421 n).toNat

end

end A148431.P18338571697620674001

/-! ## A148431.P704362497233165426

`A220413(A118266(n)+4)`
-/

namespace A148431.P704362497233165426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A118266 n + 4).toNat

end

end A148431.P704362497233165426

/-! ## A148431.P4619767195767584351

`A106442(A214201(n))+A000110(n)`
-/

namespace A148431.P4619767195767584351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (A214201 n).toNat + A000110 n

end

end A148431.P4619767195767584351

/-!
# A148432: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148432, there is no canonical definition to state claims against.
-/

/-! ## A148432.P15019535526509523352

`A336119(A298269(n))`
-/

namespace A148432.P15019535526509523352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336119 (A298269 n).toNat

end

end A148432.P15019535526509523352

/-! ## A148432.P9871674728997490347

`A026414(A148833(n)+A148825(n))`
-/

namespace A148432.P9871674728997490347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026414 (A148833 n + A148825 n).toNat

end

end A148432.P9871674728997490347

/-! ## A148432.P17076460433799061832

`A178210(A148422(n))`
-/

namespace A148432.P17076460433799061832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A148422 n).toNat

end

end A148432.P17076460433799061832

/-!
# A148433: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148433, there is no canonical definition to state claims against.
-/

/-! ## A148433.P11994389516434360207

`A194640(A148882(n))`
-/

namespace A148433.P11994389516434360207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A148882 n).toNat

end

end A148433.P11994389516434360207

/-! ## A148433.P6526862211120706073

`A260734(or(1, A002870(n+1)))`
-/

namespace A148433.P6526862211120706073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (Int.lor 1 (A002870 (n + 1))).toNat

end

end A148433.P6526862211120706073

/-! ## A148433.P9535563750968221863

`A080098(A145350(n)+A089408(n))`
-/

namespace A148433.P9535563750968221863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A145350 n + A089408 n).toNat

end

end A148433.P9535563750968221863

/-!
# A148434: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148434, there is no canonical definition to state claims against.
-/

/-! ## A148434.P804418622759263916

`and(A045414(3*n+5), A110656(A001692(n)))`
-/

namespace A148434.P804418622759263916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045414 (3 * n + 5)) (A110656 (A001692 n).toNat)

end

end A148434.P804418622759263916

/-!
# A148435: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148435, there is no canonical definition to state claims against.
-/

/-! ## A148435.P4129748011734371788

`A195120(A149016(n)+A149014(n))`
-/

namespace A148435.P4129748011734371788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A149016 n + A149014 n).toNat

end

end A148435.P4129748011734371788

/-! ## A148435.P16955539256146555493

`A144000(A149409(n))`
-/

namespace A148435.P16955539256146555493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (A149409 n).toNat

end

end A148435.P16955539256146555493

/-! ## A148435.P16419194920329171449

`A173022(A328430(n+2)-∑[n])`
-/

namespace A148435.P16419194920329171449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 (A328430 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A148435.P16419194920329171449

/-!
# A148436: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148436, there is no canonical definition to state claims against.
-/

/-! ## A148436.P7188549362867786873

`A024417(∑[A222656((n^5+1)/(n+1))])`
-/

namespace A148436.P7188549362867786873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (SequenceMachineLib.roundAway ((n ^ 5 + 1 : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148436.P7188549362867786873

/-! ## A148436.P1920638347665192221

`A148432(n)+A034329(A034329(n))`
-/

namespace A148436.P1920638347665192221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148432 n + A034329 (A034329 n).toNat

end

end A148436.P1920638347665192221

/-!
# A148437: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148437, there is no canonical definition to state claims against.
-/

/-! ## A148437.P2789496359781774552

`floor(A000312(n)/A085632(n+1))`
-/

namespace A148437.P2789496359781774552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000312 n : ℚ) / (A085632 (n + 1) : ℚ)⌋

end

end A148437.P2789496359781774552

/-! ## A148437.P12012106223323904805

`A372281(A116720(n))`
-/

namespace A148437.P12012106223323904805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372281 (A116720 n).toNat

end

end A148437.P12012106223323904805

/-! ## A148437.P16651781917593555162

`A109950(A320222(n+1))+A014335(n)`
-/

namespace A148437.P16651781917593555162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (A320222 (n + 1)).toNat + A014335 n

end

end A148437.P16651781917593555162

/-!
# A148438: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148438, there is no canonical definition to state claims against.
-/

/-! ## A148438.P1114633549445921763

`A148439(n)-A185264(∑[n])`
-/

namespace A148438.P1114633549445921763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148439 n - A185264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148438.P1114633549445921763

/-! ## A148438.P1216308778512387132

`A214920(A296516(n)+A214914(n))`
-/

namespace A148438.P1216308778512387132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214920 (A296516 n + A214914 n).toNat

end

end A148438.P1216308778512387132

/-! ## A148438.P3050914368292861097

`or(round(sqrt(2*n)), A099766(2*n²))`
-/

namespace A148438.P3050914368292861097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) (A099766 (2 * n ^ 2))

end

end A148438.P3050914368292861097

/-!
# A148439: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148439, there is no canonical definition to state claims against.
-/

/-! ## A148439.P9841409833918732259

`or(A008619(n), A094281(A060945(n)))`
-/

namespace A148439.P9841409833918732259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 n) (A094281 (A060945 n).toNat)

end

end A148439.P9841409833918732259

/-! ## A148439.P1285149350106610948

`or(A029836(A001096(n)), A148438(n))`
-/

namespace A148439.P1285149350106610948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029836 (A001096 n).toNat) (A148438 n)

end

end A148439.P1285149350106610948

/-! ## A148439.P17568167355049224903

`or(A094281(A060945(n)), A148438(n))`
-/

namespace A148439.P17568167355049224903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094281 (A060945 n).toNat) (A148438 n)

end

end A148439.P17568167355049224903

/-! ## A148439.P6109470663670184750

`or(A132896(A058834(n)), A148438(n))`
-/

namespace A148439.P6109470663670184750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132896 (A058834 n).toNat) (A148438 n)

end

end A148439.P6109470663670184750

/-!
# A148440: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A148440, there is no canonical definition to state claims against.
-/

/-! ## A148440.P2938045075312568601

`A148441(A002998(n))`
-/

namespace A148440.P2938045075312568601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148441 (A002998 n).toNat

end

end A148440.P2938045075312568601

/-! ## A148440.P1583797559008920301

`A004151(A148441(n))`
-/

namespace A148440.P1583797559008920301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148441 n).toNat

end

end A148440.P1583797559008920301

/-! ## A148440.P3654287949993763280

`A148441(A039723(n))`
-/

namespace A148440.P3654287949993763280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148441 (A039723 n).toNat

end

end A148440.P3654287949993763280

/-! ## A148440.P14558779357278232396

`A148441(A046469(n))`
-/

namespace A148440.P14558779357278232396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148441 (A046469 n).toNat

end

end A148440.P14558779357278232396

/-! ## A148440.P12473284708048097677

`A148441(A051022(n))`
-/

namespace A148440.P12473284708048097677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148441 (A051022 n).toNat

end

end A148440.P12473284708048097677

/-!
# A148442: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A148442, there is no canonical definition to state claims against.
-/

/-! ## A148442.P10586571262373485412

`A148440(n)+A037802(A072110(n))`
-/

namespace A148442.P10586571262373485412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148440 n + A037802 (A072110 n).toNat

end

end A148442.P10586571262373485412

/-! ## A148442.P18086905792606710548

`A148441(n)+A037802(A072110(n))`
-/

namespace A148442.P18086905792606710548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148441 n + A037802 (A072110 n).toNat

end

end A148442.P18086905792606710548

/-! ## A148442.P10206457363662797925

`A234323(A054382(n))+A148440(n)`
-/

namespace A148442.P10206457363662797925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A054382 n).toNat + A148440 n

end

end A148442.P10206457363662797925

/-! ## A148442.P4621478365877471663

`A234323(A054382(n))+A148441(n)`
-/

namespace A148442.P4621478365877471663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A054382 n).toNat + A148441 n

end

end A148442.P4621478365877471663

/-!
# A148443: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148443, there is no canonical definition to state claims against.
-/

/-! ## A148443.P14733702951563604892

`A343609(A260745(n+1))+A214314(A002024(n+1))`
-/

namespace A148443.P14733702951563604892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A260745 (n + 1)).toNat + A214314 (A002024 (n + 1)).toNat

end

end A148443.P14733702951563604892

/-! ## A148443.P5958096352520382174

`A033862(A148444(n))`
-/

namespace A148443.P5958096352520382174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148444 n).toNat

end

end A148443.P5958096352520382174

/-! ## A148443.P2111813722863006201

`A148444(A073788(n))`
-/

namespace A148443.P2111813722863006201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148444 (A073788 n).toNat

end

end A148443.P2111813722863006201

/-!
# A148444: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148444, there is no canonical definition to state claims against.
-/

/-! ## A148444.P12089180044417881504

`A248227(A036727(n)+A001011(n+1))`
-/

namespace A148444.P12089180044417881504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A036727 n + A001011 (n + 1)).toNat

end

end A148444.P12089180044417881504

/-! ## A148444.P17318343492745796093

`A332086(A052530(n)+A003557(n+1))`
-/

namespace A148444.P17318343492745796093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A052530 n + A003557 (n + 1)).toNat

end

end A148444.P17318343492745796093

/-!
# A148445: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148445, there is no canonical definition to state claims against.
-/

/-! ## A148445.P16896027612561522799

`A247910(A148159(n))`
-/

namespace A148445.P16896027612561522799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (A148159 n).toNat

end

end A148445.P16896027612561522799

/-! ## A148445.P6378116221909455439

`A148446(A073788(n))`
-/

namespace A148445.P6378116221909455439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148446 (A073788 n).toNat

end

end A148445.P6378116221909455439

/-! ## A148445.P9473452987376244422

`A115060(A148446(n))`
-/

namespace A148445.P9473452987376244422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A148446 n).toNat

end

end A148445.P9473452987376244422

/-!
# A148447: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148447, there is no canonical definition to state claims against.
-/

/-! ## A148447.P10337288910964767036

`A148448(A002998(n))`
-/

namespace A148447.P10337288910964767036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148448 (A002998 n).toNat

end

end A148447.P10337288910964767036

/-! ## A148447.P4736221123215741232

`A004178(A148448(n))`
-/

namespace A148447.P4736221123215741232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A148448 n).toNat

end

end A148447.P4736221123215741232

/-! ## A148447.P249340597291458132

`A148448(A039723(n))`
-/

namespace A148447.P249340597291458132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148448 (A039723 n).toNat

end

end A148447.P249340597291458132

/-! ## A148447.P14249907863644739929

`A148448(A046469(n))`
-/

namespace A148447.P14249907863644739929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148448 (A046469 n).toNat

end

end A148447.P14249907863644739929

/-! ## A148447.P17734203204699111263

`A148448(A051022(n))`
-/

namespace A148447.P17734203204699111263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148448 (A051022 n).toNat

end

end A148447.P17734203204699111263

/-!
# A148449: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148449, there is no canonical definition to state claims against.
-/

/-! ## A148449.P8213771584883363174

`A148450(n^∑[char[10*n]])`
-/

namespace A148449.P8213771584883363174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148450 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A148449.P8213771584883363174

/-! ## A148449.P11535093117448148744

`A004178(A148450(n))`
-/

namespace A148449.P11535093117448148744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A148450 n).toNat

end

end A148449.P11535093117448148744

/-! ## A148449.P10720531344860440742

`A023443(A148450(n)+1)`
-/

namespace A148449.P10720531344860440742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A148450 n + 1).toNat

end

end A148449.P10720531344860440742

/-! ## A148449.P1814809903916949843

`A289207(A148450(n)+2)`
-/

namespace A148449.P1814809903916949843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A148450 n + 2).toNat

end

end A148449.P1814809903916949843

/-! ## A148449.P5836294361168618280

`A023446(A148450(n)+4)`
-/

namespace A148449.P5836294361168618280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A148450 n + 4).toNat

end

end A148449.P5836294361168618280

/-!
# A148451: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148451, there is no canonical definition to state claims against.
-/

/-! ## A148451.P2081758247922061778

`A132270(A001037(2*(n+1)))+A055802(n+2)`
-/

namespace A148451.P2081758247922061778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A001037 (2 * (n + 1))).toNat + A055802 (n + 2)

end

end A148451.P2081758247922061778

/-! ## A148451.P12249392540214066609

`A116649(ceil(2^(n-1)))-floor(n*2^(n-3))`
-/

namespace A148451.P12249392540214066609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116649 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A148451.P12249392540214066609

/-! ## A148451.P1255727734629150046

`A024417(A151488(n))`
-/

namespace A148451.P1255727734629150046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A151488 n).toNat

end

end A148451.P1255727734629150046

/-!
# A148452: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148452, there is no canonical definition to state claims against.
-/

/-! ## A148452.P17654009237348267238

`A106432(A149989(n))`
-/

namespace A148452.P17654009237348267238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149989 n).toNat

end

end A148452.P17654009237348267238

/-! ## A148452.P6873053440297165161

`A106432(A149990(n))`
-/

namespace A148452.P6873053440297165161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A149990 n).toNat

end

end A148452.P6873053440297165161

/-! ## A148452.P16425855708247360194

`A185150(A289719(n))`
-/

namespace A148452.P16425855708247360194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185150 (A289719 n).toNat

end

end A148452.P16425855708247360194

/-!
# A148453: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148453, there is no canonical definition to state claims against.
-/

/-! ## A148453.P16204941795255855117

`A194640(A194690(n)+A194661(n+1))`
-/

namespace A148453.P16204941795255855117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A194690 n + A194661 (n + 1)).toNat

end

end A148453.P16204941795255855117

/-! ## A148453.P13085372466902001304

`A194640(A194690(n)+1-A194685(n+1))`
-/

namespace A148453.P13085372466902001304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A194690 n + (1 - A194685 (n + 1))).toNat

end

end A148453.P13085372466902001304

/-! ## A148453.P4144150041968057872

`A194640(A194690(n)+A194685(2*(n+1)))`
-/

namespace A148453.P4144150041968057872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A194690 n + A194685 (2 * (n + 1))).toNat

end

end A148453.P4144150041968057872

/-! ## A148453.P13819566531248181278

`A222939(n+1)-A110656(A001190(2*n))`
-/

namespace A148453.P13819566531248181278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222939 (n + 1) - A110656 (A001190 (2 * n)).toNat

end

end A148453.P13819566531248181278

/-!
# A148454: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148454, there is no canonical definition to state claims against.
-/

/-! ## A148454.P12166777624278121512

`A300763(A360219(n)+A049653(n+2))`
-/

namespace A148454.P12166777624278121512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A360219 n + A049653 (n + 2)).toNat

end

end A148454.P12166777624278121512

/-! ## A148454.P4113563751321967028

`A300763(A360294(n)+A049653(n+2))`
-/

namespace A148454.P4113563751321967028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A360294 n + A049653 (n + 2)).toNat

end

end A148454.P4113563751321967028

/-! ## A148454.P17614306614768533199

`A300763(or(A360240(n+1), A360294(n)))`
-/

namespace A148454.P17614306614768533199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (Int.lor (A360240 (n + 1)) (A360294 n)).toNat

end

end A148454.P17614306614768533199

/-! ## A148454.P2150812716726857397

`A300763(or(A027751(n+5), A360294(n)))`
-/

namespace A148454.P2150812716726857397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (Int.lor (A027751 (n + 5)) (A360294 n)).toNat

end

end A148454.P2150812716726857397

/-!
# A148455: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148455, there is no canonical definition to state claims against.
-/

/-! ## A148455.P692132166877863830

`A337674(A101891(n))`
-/

namespace A148455.P692132166877863830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (A101891 n).toNat

end

end A148455.P692132166877863830

/-! ## A148455.P11097647360612632963

`A337674(A119967(n))`
-/

namespace A148455.P11097647360612632963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (A119967 n).toNat

end

end A148455.P11097647360612632963

/-! ## A148455.P6103822236826794475

`A298305(A283877(n))`
-/

namespace A148455.P6103822236826794475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 (A283877 n).toNat

end

end A148455.P6103822236826794475

/-!
# A148456: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148456, there is no canonical definition to state claims against.
-/

/-! ## A148456.P2186658896655754867

`A227373(n)-A227386(A011925(n))`
-/

namespace A148456.P2186658896655754867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227373 n - A227386 (A011925 n).toNat

end

end A148456.P2186658896655754867

/-! ## A148456.P3709833992546993661

`A076222(A200222(n))`
-/

namespace A148456.P3709833992546993661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076222 (A200222 n).toNat

end

end A148456.P3709833992546993661

/-! ## A148456.P1825028225186598609

`A226762(A150396(n))`
-/

namespace A148456.P1825028225186598609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150396 n).toNat

end

end A148456.P1825028225186598609

/-!
# A148457: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148457, there is no canonical definition to state claims against.
-/

/-! ## A148457.P16399918734644365064

`A079952(n*a(n-1))+n` with `a(0)=1`
-/

namespace A148457.P16399918734644365064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079952 ((n : ℤ) * a (n - 1)).toNat + (n : ℤ)

end

end A148457.P16399918734644365064

/-! ## A148457.P2556575154443905513

`A023193(A149708(n))`
-/

namespace A148457.P2556575154443905513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149708 n).toNat

end

end A148457.P2556575154443905513

/-! ## A148457.P17476923745714889765

`A080098(A185622(n))`
-/

namespace A148457.P17476923745714889765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A185622 n).toNat

end

end A148457.P17476923745714889765

/-!
# A148458: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148458, there is no canonical definition to state claims against.
-/

/-! ## A148458.P16392210748196876626

`A072000(A316974(n))+1`
-/

namespace A148458.P16392210748196876626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A316974 n).toNat + 1

end

end A148458.P16392210748196876626

/-! ## A148458.P17053878985296867554

`A070564(A008930(2*n+1))`
-/

namespace A148458.P17053878985296867554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A008930 (2 * n + 1)).toNat

end

end A148458.P17053878985296867554

/-! ## A148458.P15962066815940592537

`A024417(A073155(n))`
-/

namespace A148458.P15962066815940592537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A073155 n).toNat

end

end A148458.P15962066815940592537

/-!
# A148459: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148459, there is no canonical definition to state claims against.
-/

/-! ## A148459.P15347944209016270185

`A264749(A119244(n+1))`
-/

namespace A148459.P15347944209016270185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A119244 (n + 1)).toNat

end

end A148459.P15347944209016270185

/-! ## A148459.P11762210749686507704

`A108954(A150378(n)+2-n)`
-/

namespace A148459.P11762210749686507704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A150378 n + (2 - (n : ℤ))).toNat

end

end A148459.P11762210749686507704

/-! ## A148459.P2513030245054270193

`A108954(2-(n-A150378(n)))`
-/

namespace A148459.P2513030245054270193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (2 - ((n : ℤ) - A150378 n)).toNat

end

end A148459.P2513030245054270193

/-! ## A148459.P3239371153606608172

`A341025(A116637(n))+A148458(n)`
-/

namespace A148459.P3239371153606608172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A116637 n).toNat + 120) + A148458 n

end

end A148459.P3239371153606608172

/-!
# A148460: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148460, there is no canonical definition to state claims against.
-/

/-! ## A148460.P12823647777870790217

`A008616(A032952(n)+A008458(n))`
-/

namespace A148460.P12823647777870790217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A032952 n + A008458 n).toNat

end

end A148460.P12823647777870790217

/-! ## A148460.P10037014364705508557

`A261585(A150022(n)+A000244(n))`
-/

namespace A148460.P10037014364705508557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A150022 n + A000244 n).toNat

end

end A148460.P10037014364705508557

/-! ## A148460.P10093167280566708351

`A195120(A278394(n)+A005195(n))`
-/

namespace A148460.P10093167280566708351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A278394 n + A005195 n).toNat

end

end A148460.P10093167280566708351

/-!
# A148461: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148461, there is no canonical definition to state claims against.
-/

/-! ## A148461.P8473979716800612000

`A129607(A148423(n))`
-/

namespace A148461.P8473979716800612000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A148423 n).toNat

end

end A148461.P8473979716800612000

/-! ## A148461.P11527007833938070001

`A026806(A217233(n))+floor(n-atan(n))`
-/

namespace A148461.P11527007833938070001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A217233 n).toNat + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A148461.P11527007833938070001

/-! ## A148461.P7386508964324197811

`A343958(ceil(2^(n-1)))+A148423(n)`
-/

namespace A148461.P7386508964324197811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A148423 n

end

end A148461.P7386508964324197811

/-! ## A148461.P15440227424318716251

`A103221(A217233(n))+A068398(n)`
-/

namespace A148461.P15440227424318716251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A217233 n).toNat + A068398 n

end

end A148461.P15440227424318716251

/-!
# A148462: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148462, there is no canonical definition to state claims against.
-/

/-! ## A148462.P14837800256820661922

`A008615(2*A149957(n))`
-/

namespace A148462.P14837800256820661922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A149957 n).toNat

end

end A148462.P14837800256820661922

/-! ## A148462.P10405114122921174923

`A034887(A229762(n)+A149982(n))`
-/

namespace A148462.P10405114122921174923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A229762 n + A149982 n).toNat

end

end A148462.P10405114122921174923

/-! ## A148462.P1826207492730204644

`A246552(A149190(n)+A149142(n))`
-/

namespace A148462.P1826207492730204644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (A149190 n + A149142 n).toNat

end

end A148462.P1826207492730204644

/-!
# A148463: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148463, there is no canonical definition to state claims against.
-/

/-! ## A148463.P1785227593981981159

`A371587(A364907(n))`
-/

namespace A148463.P1785227593981981159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A364907 n).toNat

end

end A148463.P1785227593981981159

/-! ## A148463.P16041717883865589057

`A320847(A120588(n))+A164863(n)`
-/

namespace A148463.P16041717883865589057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A120588 n).toNat + A164863 n

end

end A148463.P16041717883865589057

/-!
# A148464: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148464, there is no canonical definition to state claims against.
-/

/-! ## A148464.P9038277679378055343

`A226762(A045868(n))`
-/

namespace A148464.P9038277679378055343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A045868 n).toNat

end

end A148464.P9038277679378055343

/-! ## A148464.P10457232578973145520

`A000006(A343787(n))`
-/

namespace A148464.P10457232578973145520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A343787 n).toNat

end

end A148464.P10457232578973145520

/-! ## A148464.P13428145103486135439

`A265359(A121774(n))`
-/

namespace A148464.P13428145103486135439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A121774 n).toNat

end

end A148464.P13428145103486135439

/-!
# A148465: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148465, there is no canonical definition to state claims against.
-/

/-! ## A148465.P3196622844621745987

`A112689(∑[A134758(n)])`
-/

namespace A148465.P3196622844621745987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148465.P3196622844621745987

/-! ## A148465.P10059137236970556815

`A112689(∑[A000984(n)+n])`
-/

namespace A148465.P10059137236970556815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148465.P10059137236970556815

/-! ## A148465.P8556384827117357557

`A092695(A086187(n+1)+A000984(n))`
-/

namespace A148465.P8556384827117357557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (A086187 (n + 1) + A000984 n).toNat

end

end A148465.P8556384827117357557

/-! ## A148465.P15510675982222787103

`A092695(A089189(n+1)+A000984(n))`
-/

namespace A148465.P15510675982222787103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (A089189 (n + 1) + A000984 n).toNat

end

end A148465.P15510675982222787103

/-!
# A148466: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148466, there is no canonical definition to state claims against.
-/

/-! ## A148466.P7444643830510253937

`A300763(A302623(n+1)+A000984(n))`
-/

namespace A148466.P7444643830510253937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A302623 (n + 1) + A000984 n).toNat

end

end A148466.P7444643830510253937

/-! ## A148466.P15701544006661509073

`A178210(A085139(n))`
-/

namespace A148466.P15701544006661509073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A085139 n).toNat

end

end A148466.P15701544006661509073

/-! ## A148466.P9062534323078486831

`A048686(A246975(n))`
-/

namespace A148466.P9062534323078486831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A246975 n).toNat

end

end A148466.P9062534323078486831

/-!
# A148467: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148467, there is no canonical definition to state claims against.
-/

/-! ## A148467.P10656334869072585388

`A085182(A149965(n))`
-/

namespace A148467.P10656334869072585388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085182 (A149965 n).toNat

end

end A148467.P10656334869072585388

/-! ## A148467.P16891293809415762045

`A337635(A394498(n+1))`
-/

namespace A148467.P16891293809415762045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A394498 (n + 1)).toNat

end

end A148467.P16891293809415762045

/-! ## A148467.P12715352079303942821

`A148468(n)-A219558(A350020(n+1))`
-/

namespace A148467.P12715352079303942821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148468 n - A219558 (A350020 (n + 1)).toNat

end

end A148467.P12715352079303942821

/-!
# A148468: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148468, there is no canonical definition to state claims against.
-/

/-! ## A148468.P9912795643111336939

`or(A148467(n), A258055(A005142(n)))`
-/

namespace A148468.P9912795643111336939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148467 n) (A258055 (A005142 n).toNat)

end

end A148468.P9912795643111336939

/-! ## A148468.P5203563471230003170

`A219558(A350020(n+1))+A148467(n)`
-/

namespace A148468.P5203563471230003170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219558 (A350020 (n + 1)).toNat + A148467 n

end

end A148468.P5203563471230003170

/-! ## A148468.P13632478886518833366

`or(A001221(A179367(n+1)), A148467(n))`
-/

namespace A148468.P13632478886518833366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A179367 (n + 1)).toNat) (A148467 n)

end

end A148468.P13632478886518833366

/-!
# A148469: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148469, there is no canonical definition to state claims against.
-/

/-! ## A148469.P2139662767165750841

`A008621(A150063(n)+A007598(n))`
-/

namespace A148469.P2139662767165750841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150063 n + A007598 n).toNat

end

end A148469.P2139662767165750841

/-! ## A148469.P2389839553194884904

`floor(root(A000124((n+1)!), 3))`
-/

namespace A148469.P2389839553194884904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 (Nat.factorial (n + 1)) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A148469.P2389839553194884904

/-! ## A148469.P16991904146732814152

`floor(root(A000217((n+1)!), 3))`
-/

namespace A148469.P16991904146732814152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (Nat.factorial (n + 1)) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A148469.P16991904146732814152

/-!
# A148470: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148470, there is no canonical definition to state claims against.
-/

/-! ## A148470.P87115542093567745

`A195120(A030657(n+1)+A001678(2*(n+2)))`
-/

namespace A148470.P87115542093567745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A030657 (n + 1) + A001678 (2 * (n + 2))).toNat

end

end A148470.P87115542093567745

/-! ## A148470.P3699210317538226560

`A195120(A072126(3*n+1)+A001678(2*(n+2)))`
-/

namespace A148470.P3699210317538226560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A072126 (3 * n + 1) + A001678 (2 * (n + 2))).toNat

end

end A148470.P3699210317538226560

/-! ## A148470.P8378678823437642322

`A195120(A071982(2*n+3)+A001678(2*(n+2)))`
-/

namespace A148470.P8378678823437642322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A071982 (2 * n + 3) + A001678 (2 * (n + 2))).toNat

end

end A148470.P8378678823437642322

/-!
# A148471: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148471, there is no canonical definition to state claims against.
-/

/-! ## A148471.P15395683535679384605

`A126093(n)+A008615(A101850(n))`
-/

namespace A148471.P15395683535679384605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126093 n + A008615 (A101850 n).toNat

end

end A148471.P15395683535679384605

/-! ## A148471.P8413862576043020462

`A247971(A173519(n))`
-/

namespace A148471.P8413862576043020462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A173519 n).toNat

end

end A148471.P8413862576043020462

/-! ## A148471.P14770645183799468381

`A382717(A148416(n))`
-/

namespace A148471.P14770645183799468381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A148416 n).toNat

end

end A148471.P14770645183799468381

/-!
# A148472: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148472, there is no canonical definition to state claims against.
-/

/-! ## A148472.P10068534389212354708

`A008615(A103128(2*(n+3))+A099783(n))`
-/

namespace A148472.P10068534389212354708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A103128 (2 * (n + 3)) + A099783 n).toNat

end

end A148472.P10068534389212354708

/-! ## A148472.P569406856416949901

`round(A149254(n)%p?[2^n-1]/2)`
-/

namespace A148472.P569406856416949901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (A149254 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 2)

end

end A148472.P569406856416949901

/-! ## A148472.P15614129314996160277

`A157271(A149253(n))`
-/

namespace A148472.P15614129314996160277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149253 n).toNat

end

end A148472.P15614129314996160277

/-!
# A148473: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148473, there is no canonical definition to state claims against.
-/

/-! ## A148473.P17802225153911694668

`A390395(A151439(n))`
-/

namespace A148473.P17802225153911694668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A151439 n).toNat

end

end A148473.P17802225153911694668

/-! ## A148473.P9383182883420223343

`A185319(A183897(n+1))`
-/

namespace A148473.P9383182883420223343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 (A183897 (n + 1)).toNat

end

end A148473.P9383182883420223343

/-! ## A148473.P7578797426394170156

`A178210(A022873(n+2))`
-/

namespace A148473.P7578797426394170156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A022873 (n + 2)).toNat

end

end A148473.P7578797426394170156

/-!
# A148474: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148474, there is no canonical definition to state claims against.
-/

/-! ## A148474.P15776490153189577821

`A109680(A359463(n))`
-/

namespace A148474.P15776490153189577821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A359463 n).toNat

end

end A148474.P15776490153189577821

/-! ## A148474.P10969792077462545054

`A008676(9*A148973(n))`
-/

namespace A148474.P10969792077462545054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (9 * A148973 n).toNat

end

end A148474.P10969792077462545054

/-! ## A148474.P4973569425081757918

`Δ[A264749(Δ[A316371(n)])]`
-/

namespace A148474.P4973569425081757918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A148474.P4973569425081757918

/-!
# A148475: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148475, there is no canonical definition to state claims against.
-/

/-! ## A148475.P8775421503012550451

`A226762(A026759(n))`
-/

namespace A148475.P8775421503012550451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A026759 n).toNat

end

end A148475.P8775421503012550451

/-! ## A148475.P8380648122134426106

`A265370(A001705(n)+3)`
-/

namespace A148475.P8380648122134426106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A001705 n + 3).toNat

end

end A148475.P8380648122134426106

/-! ## A148475.P6046030373705924195

`A305194(∑[record[A036710(n)]])`
-/

namespace A148475.P6046030373705924195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148475.P6046030373705924195

/-!
# A148476: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148476, there is no canonical definition to state claims against.
-/

/-! ## A148476.P2508593568114065313

`A001462(A177341(n))`
-/

namespace A148476.P2508593568114065313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A177341 n).toNat

end

end A148476.P2508593568114065313

/-! ## A148476.P2240448078220717091

`A046155(A209673(n))`
-/

namespace A148476.P2240448078220717091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A209673 n).toNat

end

end A148476.P2240448078220717091

/-! ## A148476.P5891243916336791764

`A023193(A002213(n+1))`
-/

namespace A148476.P5891243916336791764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A002213 (n + 1)).toNat

end

end A148476.P5891243916336791764

/-!
# A148477: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148477, there is no canonical definition to state claims against.
-/

/-! ## A148477.P8497118216000322723

`A178210(A193111(n))`
-/

namespace A148477.P8497118216000322723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A193111 n).toNat

end

end A148477.P8497118216000322723

/-! ## A148477.P12797040273755550517

`A226190(A149182(n))`
-/

namespace A148477.P12797040273755550517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149182 n).toNat

end

end A148477.P12797040273755550517

/-! ## A148477.P14502667774994332999

`A130446(A285197(n))`
-/

namespace A148477.P14502667774994332999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A285197 n).toNat

end

end A148477.P14502667774994332999

/-!
# A148478: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148478, there is no canonical definition to state claims against.
-/

/-! ## A148478.P7554592637629759043

`A195072(round(A149903(n)-atan(n)))`
-/

namespace A148478.P7554592637629759043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (SequenceMachineLib.roundAway ((A149903 n : ℝ) - Real.arctan (n : ℝ))).toNat

end

end A148478.P7554592637629759043

/-! ## A148478.P4607357243452769789

`A195072(A149903(n)+floor(acot(n))-1)`
-/

namespace A148478.P4607357243452769789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A149903 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A148478.P4607357243452769789

/-! ## A148478.P13993982840174248405

`A195072(A149903(n)-A057427(n))`
-/

namespace A148478.P13993982840174248405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A149903 n - A057427 n).toNat

end

end A148478.P13993982840174248405

/-! ## A148478.P7414260731886070380

`A195072(A149903(n)-A083382(n+1))`
-/

namespace A148478.P7414260731886070380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A149903 n - A083382 (n + 1)).toNat

end

end A148478.P7414260731886070380

/-! ## A148478.P8821214591445696700

`A195072(A149903(n)-A199238(n+1))`
-/

namespace A148478.P8821214591445696700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A149903 n - A199238 (n + 1)).toNat

end

end A148478.P8821214591445696700

/-!
# A148479: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148479, there is no canonical definition to state claims against.
-/

/-! ## A148479.P9476715618252999420

`A387141(A148934(n+1))`
-/

namespace A148479.P9476715618252999420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A148934 (n + 1)).toNat

end

end A148479.P9476715618252999420

/-! ## A148479.P1846705782411129541

`A083382(Δ[∏[4-2/(n+1)]/2])`
-/

namespace A148479.P1846705782411129541
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A148479.P1846705782411129541

/-! ## A148479.P16910177846720426311

`A064460(A300652(n))+1`
-/

namespace A148479.P16910177846720426311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064460 (A300652 n).toNat + 1

end

end A148479.P16910177846720426311

/-!
# A148480: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148480, there is no canonical definition to state claims against.
-/

/-! ## A148480.P13021004551054229058

`A061396(n)-A056974(A000670(n))`
-/

namespace A148480.P13021004551054229058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 n - A056974 (A000670 n).toNat

end

end A148480.P13021004551054229058

/-! ## A148480.P12274786304943435100

`A061396(n)-A096693(A020029(n))`
-/

namespace A148480.P12274786304943435100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 n - A096693 (A020029 n).toNat

end

end A148480.P12274786304943435100

/-! ## A148480.P6096430687138162941

`A192497(n)-A096693(A020029(n))`
-/

namespace A148480.P6096430687138162941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192497 n - A096693 (A020029 n).toNat

end

end A148480.P6096430687138162941

/-! ## A148480.P8589581622920391009

`A230823(n)-A096693(A020029(n))`
-/

namespace A148480.P8589581622920391009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230823 n - A096693 (A020029 n).toNat

end

end A148480.P8589581622920391009

/-!
# A148481: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148481, there is no canonical definition to state claims against.
-/

/-! ## A148481.P15746966684631664586

`A230149(A360150(n)+5)`
-/

namespace A148481.P15746966684631664586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230149 (A360150 n + 5).toNat

end

end A148481.P15746966684631664586

/-! ## A148481.P3603843039737136173

`A216837(n)+A121902(A003184(n+1))`
-/

namespace A148481.P3603843039737136173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216837 n + A121902 (A003184 (n + 1)).toNat

end

end A148481.P3603843039737136173

/-! ## A148481.P3387333648319236960

`A008618(A001551(n))`
-/

namespace A148481.P3387333648319236960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A001551 n).toNat

end

end A148481.P3387333648319236960

/-!
# A148482: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148482, there is no canonical definition to state claims against.
-/

/-! ## A148482.P11679933718123172527

`A106228(n)-A362949(A362907(n))`
-/

namespace A148482.P11679933718123172527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n - A362949 (A362907 n).toNat

end

end A148482.P11679933718123172527

/-! ## A148482.P4743322430949145843

`A348553(A230823(n)^A324362(n)!-1)`
-/

namespace A148482.P4743322430949145843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A230823 n ^ Nat.factorial (A324362 n).toNat - 1).toNat

end

end A148482.P4743322430949145843

/-! ## A148482.P13630406639190619743

`A348553(A192497(n)%p?[A078012(n)]-1)`
-/

namespace A148482.P13630406639190619743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (Int.tmod (A192497 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) - 1).toNat

end

end A148482.P13630406639190619743

/-! ## A148482.P1164076787987166168

`A348553(A146644(n+1)*A230823(n)-1)`
-/

namespace A148482.P1164076787987166168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A146644 (n + 1) * A230823 n - 1).toNat

end

end A148482.P1164076787987166168

/-!
# A148483: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148483, there is no canonical definition to state claims against.
-/

/-! ## A148483.P3527234023969924332

`floor(A057716(4^n+2)/14)+1`
-/

namespace A148483.P3527234023969924332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057716 (4 ^ n + 2) : ℚ) / 14⌋ + 1

end

end A148483.P3527234023969924332

/-! ## A148483.P73079483879691891

`A008616(A149970(n+1))`
-/

namespace A148483.P73079483879691891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A149970 (n + 1)).toNat

end

end A148483.P73079483879691891

/-! ## A148483.P2723352025503767241

`A289498(A151468(n+1))`
-/

namespace A148483.P2723352025503767241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A151468 (n + 1)).toNat

end

end A148483.P2723352025503767241

/-!
# A148484: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148484, there is no canonical definition to state claims against.
-/

/-! ## A148484.P11372776292871052039

`A195177(A134168(n)+A001951(n))`
-/

namespace A148484.P11372776292871052039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A134168 n + A001951 n).toNat

end

end A148484.P11372776292871052039

/-! ## A148484.P15179414318878641554

`A195177(A134168(n)+A002620(n))`
-/

namespace A148484.P15179414318878641554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A134168 n + A002620 n).toNat

end

end A148484.P15179414318878641554

/-! ## A148484.P13075727809530498506

`A195177(A134168(n)+A036467(n))`
-/

namespace A148484.P13075727809530498506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A134168 n + A036467 n).toNat

end

end A148484.P13075727809530498506

/-! ## A148484.P15754220473609329820

`A195177(A134168(n)+A089865(n))`
-/

namespace A148484.P15754220473609329820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A134168 n + A089865 n).toNat

end

end A148484.P15754220473609329820

/-!
# A148485: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148485, there is no canonical definition to state claims against.
-/

/-! ## A148485.P12611235270081773108

`A195177(A110136(n))`
-/

namespace A148485.P12611235270081773108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A110136 n).toNat

end

end A148485.P12611235270081773108

/-! ## A148485.P15279276505283176613

`A195120(A150153(n))`
-/

namespace A148485.P15279276505283176613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A150153 n).toNat

end

end A148485.P15279276505283176613

/-! ## A148485.P13496562329904854097

`A226190(A149041(n))`
-/

namespace A148485.P13496562329904854097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149041 n).toNat

end

end A148485.P13496562329904854097

/-!
# A148486: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148486, there is no canonical definition to state claims against.
-/

/-! ## A148486.P5355018984731035458

`A109497(A301702(n))`
-/

namespace A148486.P5355018984731035458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A301702 n).toNat

end

end A148486.P5355018984731035458

/-! ## A148486.P11591952502445674003

`A226762(A150618(n))`
-/

namespace A148486.P11591952502445674003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150618 n).toNat

end

end A148486.P11591952502445674003

/-! ## A148486.P13871789073009821712

`A063677(A393926(n))`
-/

namespace A148486.P13871789073009821712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A393926 n).toNat

end

end A148486.P13871789073009821712

/-!
# A148487: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148487, there is no canonical definition to state claims against.
-/

/-! ## A148487.P2117962129458122676

`A367467(A145268(n))`
-/

namespace A148487.P2117962129458122676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A145268 n).toNat

end

end A148487.P2117962129458122676

/-! ## A148487.P14305105141557760200

`A227911(A148711(n+1))`
-/

namespace A148487.P14305105141557760200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227911 (A148711 (n + 1)).toNat

end

end A148487.P14305105141557760200

/-! ## A148487.P15805070157286216843

`A001462(xor(1, A006675(n)))`
-/

namespace A148487.P15805070157286216843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.xor 1 (A006675 n)).toNat

end

end A148487.P15805070157286216843

/-!
# A148488: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148488, there is no canonical definition to state claims against.
-/

/-! ## A148488.P398553098019869448

`ceil(A099267(A149952(n))/4)`
-/

namespace A148488.P398553098019869448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099267 (A149952 n).toNat : ℚ) / 4⌉

end

end A148488.P398553098019869448

/-! ## A148488.P14114265940274730792

`A148489(n)-A048735(A048742(n))`
-/

namespace A148488.P14114265940274730792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148489 n - A048735 (A048742 n).toNat

end

end A148488.P14114265940274730792

/-! ## A148488.P6189339976307182484

`A148489(n)-A141150(A332638(n))`
-/

namespace A148488.P6189339976307182484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148489 n - A141150 (A332638 n).toNat

end

end A148488.P6189339976307182484

/-!
# A148489: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148489, there is no canonical definition to state claims against.
-/

/-! ## A148489.P12480819395440485627

`A148488(n)+A048735(A048742(n))`
-/

namespace A148489.P12480819395440485627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148488 n + A048735 (A048742 n).toNat

end

end A148489.P12480819395440485627

/-! ## A148489.P9064323642023276971

`A148488(n)+A141150(A332638(n))`
-/

namespace A148489.P9064323642023276971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148488 n + A141150 (A332638 n).toNat

end

end A148489.P9064323642023276971

/-! ## A148489.P3330168481684225634

`A341996(A374545(n+1))+A148488(n)`
-/

namespace A148489.P3330168481684225634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A374545 (n + 1)).toNat + A148488 n

end

end A148489.P3330168481684225634

/-! ## A148489.P10495755132415979369

`A244479((ceil(2^(n-1))+1)²)+A061398(A076905(n+1))`
-/

namespace A148489.P10495755132415979369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1) ^ 2).toNat + A061398 (A076905 (n + 1)).toNat

end

end A148489.P10495755132415979369

/-!
# A148490: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148490, there is no canonical definition to state claims against.
-/

/-! ## A148490.P13650190606637991984

`A261585(A257273(n)+A049141(n+1))`
-/

namespace A148490.P13650190606637991984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A257273 n + A049141 (n + 1)).toNat

end

end A148490.P13650190606637991984

/-! ## A148490.P5290978982497535298

`A157271(A149341(n))`
-/

namespace A148490.P5290978982497535298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149341 n).toNat

end

end A148490.P5290978982497535298

/-! ## A148490.P16266719447702736349

`A157271(A149346(n))`
-/

namespace A148490.P16266719447702736349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149346 n).toNat

end

end A148490.P16266719447702736349

/-!
# A148491: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148491, there is no canonical definition to state claims against.
-/

/-! ## A148491.P9413626648579627592

`A103221(A071954(n))+A051140(n)`
-/

namespace A148491.P9413626648579627592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A071954 n).toNat + A051140 n

end

end A148491.P9413626648579627592

/-! ## A148491.P313476141500046034

`A008620(A150091(n)-A038107(n))`
-/

namespace A148491.P313476141500046034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150091 n - A038107 n).toNat

end

end A148491.P313476141500046034

/-! ## A148491.P12678348759195471878

`A111279(n)-A321379(A350907(n))`
-/

namespace A148491.P12678348759195471878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 n - A321379 (A350907 n).toNat

end

end A148491.P12678348759195471878

/-!
# A148492: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148492, there is no canonical definition to state claims against.
-/

/-! ## A148492.P8805381714250478445

`A110655(A150218(n))`
-/

namespace A148492.P8805381714250478445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A150218 n).toNat

end

end A148492.P8805381714250478445

/-! ## A148492.P14930521756244778409

`A008621(A150218(n)-1)`
-/

namespace A148492.P14930521756244778409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150218 n - 1).toNat

end

end A148492.P14930521756244778409

/-! ## A148492.P11088514967577365742

`A002265(A150218(n)+3)`
-/

namespace A148492.P11088514967577365742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A150218 n + 3).toNat

end

end A148492.P11088514967577365742

/-! ## A148492.P6457396092267901410

`A008624(xor(1, A150218(n)))`
-/

namespace A148492.P6457396092267901410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.xor 1 (A150218 n)).toNat

end

end A148492.P6457396092267901410

/-!
# A148493: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148493, there is no canonical definition to state claims against.
-/

/-! ## A148493.P15576273066392915383

`A008621((1-n)²+A001076(n))`
-/

namespace A148493.P15576273066392915383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((1 - (n : ℤ)) ^ 2 + A001076 n).toNat

end

end A148493.P15576273066392915383

/-! ## A148493.P2650891706642349230

`A148494(n)-A025469(A149754(n))`
-/

namespace A148493.P2650891706642349230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148494 n - A025469 (A149754 n).toNat

end

end A148493.P2650891706642349230

/-! ## A148493.P9896681853551191482

`A148494(n)-A014082(A326412(n))`
-/

namespace A148493.P9896681853551191482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148494 n - A014082 (A326412 n).toNat

end

end A148493.P9896681853551191482

/-! ## A148493.P18366192847094754068

`A148494(n)-A328712(A042285(n))`
-/

namespace A148493.P18366192847094754068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148494 n - A328712 (A042285 n).toNat

end

end A148493.P18366192847094754068

/-!
# A148494: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148494, there is no canonical definition to state claims against.
-/

/-! ## A148494.P15597005525765573307

`A008621(A034828(n)+A001076(n))`
-/

namespace A148494.P15597005525765573307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A034828 n + A001076 n).toNat

end

end A148494.P15597005525765573307

/-! ## A148494.P5740337893699752302

`A008621(A207641(n)+A001076(n))`
-/

namespace A148494.P5740337893699752302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A207641 n + A001076 n).toNat

end

end A148494.P5740337893699752302

/-! ## A148494.P11992190659935546924

`A148493(n)+A025469(A149754(n))`
-/

namespace A148494.P11992190659935546924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148493 n + A025469 (A149754 n).toNat

end

end A148494.P11992190659935546924

/-! ## A148494.P8511371414239948066

`A148493(n)+A014082(A326412(n))`
-/

namespace A148494.P8511371414239948066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148493 n + A014082 (A326412 n).toNat

end

end A148494.P8511371414239948066

/-!
# A148495: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148495, there is no canonical definition to state claims against.
-/

/-! ## A148495.P1543348909373105414

`A100196(A219655(n!))`
-/

namespace A148495.P1543348909373105414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A219655 (Nat.factorial n)).toNat

end

end A148495.P1543348909373105414

/-! ## A148495.P4856781078127655865

`A195174(∑[A150539(n)])`
-/

namespace A148495.P4856781078127655865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148495.P4856781078127655865

/-! ## A148495.P12093004112906027225

`A157271(A149067(n)+1)`
-/

namespace A148495.P12093004112906027225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149067 n + 1).toNat

end

end A148495.P12093004112906027225

/-!
# A148496: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148496, there is no canonical definition to state claims against.
-/

/-! ## A148496.P169046019910940073

`A027923(A053224(n!))`
-/

namespace A148496.P169046019910940073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A053224 (Nat.factorial n)).toNat

end

end A148496.P169046019910940073

/-! ## A148496.P8432740738167277339

`A194640(A268601(n)+1)`
-/

namespace A148496.P8432740738167277339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A268601 n + 1).toNat

end

end A148496.P8432740738167277339

/-!
# A148497: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148497, there is no canonical definition to state claims against.
-/

/-! ## A148497.P3886031660222629523

`A195174(∑[A150594(n)])`
-/

namespace A148497.P3886031660222629523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148497.P3886031660222629523

/-! ## A148497.P12872634210980267245

`A187185(A052893(n+1))`
-/

namespace A148497.P12872634210980267245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A052893 (n + 1)).toNat

end

end A148497.P12872634210980267245

/-!
# A148498: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148498, there is no canonical definition to state claims against.
-/

/-! ## A148498.P17694055110044619921

`A140106(4*A148013(n))`
-/

namespace A148498.P17694055110044619921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (4 * A148013 n).toNat

end

end A148498.P17694055110044619921

/-! ## A148498.P5309532871569307091

`A249738(4*A148013(n))`
-/

namespace A148498.P5309532871569307091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (4 * A148013 n).toNat

end

end A148498.P5309532871569307091

/-! ## A148498.P16220294202689183449

`A059169(8*A148013(n))`
-/

namespace A148498.P16220294202689183449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (8 * A148013 n).toNat

end

end A148498.P16220294202689183449

/-! ## A148498.P940840594229412167

`A004277(A148507(n))-A148524(n)`
-/

namespace A148498.P940840594229412167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148507 n).toNat - A148524 n

end

end A148498.P940840594229412167

/-! ## A148498.P17435191130644098868

`A004277(A148510(n))-A148530(n)`
-/

namespace A148498.P17435191130644098868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148510 n).toNat - A148530 n

end

end A148498.P17435191130644098868

/-!
# A148499: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148499, there is no canonical definition to state claims against.
-/

/-! ## A148499.P18162596479726722888

`A276625(or(A048993(n), A374682(n)))`
-/

namespace A148499.P18162596479726722888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (Int.lor (A048993 n) (A374682 n)).toNat

end

end A148499.P18162596479726722888

/-! ## A148499.P16626877865523124403

`xor(A002262(n), A100196(A151478(n)))`
-/

namespace A148499.P16626877865523124403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A100196 (A151478 n).toNat)

end

end A148499.P16626877865523124403

/-! ## A148499.P1496391790464771926

`or(1, A125150(ceil(2^(n-1))))`
-/

namespace A148499.P1496391790464771926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A125150 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A148499.P1496391790464771926

