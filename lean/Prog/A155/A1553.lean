import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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

/-!
# A155300: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155300, there is no canonical definition to state claims against.
-/

/-! ## A155300.P4250487901925990671

`A279831(A279840(n+2)-A279856(n+1))`
-/

namespace A155300.P4250487901925990671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279831 (A279840 (n + 2) - A279856 (n + 1)).toNat

end

end A155300.P4250487901925990671

/-!
# A155301: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 3,2 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155301, there is no canonical definition to state claims against.
-/

/-! ## A155301.P15612892561640381082

`A155262(n+4)+A083915(A027941(2*n+1))`
-/

namespace A155301.P15612892561640381082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155262 (n + 4) + A083915 (A027941 (2 * n + 1)).toNat

end

end A155301.P15612892561640381082

/-!
# A155302: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 3,3 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155302, there is no canonical definition to state claims against.
-/

/-! ## A155302.P6287415825001092608

`A309157(A301038(n))+n`
-/

namespace A155302.P6287415825001092608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309157 (A301038 n).toNat + (n : ℤ)

end

end A155302.P6287415825001092608

/-! ## A155302.P18014573192541190949

`A256537(a(n-1)+1)+A000010(n)` with `a(0)=1`
-/

namespace A155302.P18014573192541190949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256537 (a (n - 1) + 1).toNat + A000010 n

end

end A155302.P18014573192541190949

/-!
# A155305: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 3,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155305, there is no canonical definition to state claims against.
-/

/-! ## A155305.P6482968653652029228

`∑[A007496(2*n+3)]*n+1`
-/

namespace A155305.P6482968653652029228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ) + 1

end

end A155305.P6482968653652029228

/-!
# A155307: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,0 3,1 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155307, there is no canonical definition to state claims against.
-/

/-! ## A155307.P11463288492705695360

`A165956((a(n-1)+1)²)` with `a(0)=1`
-/

namespace A155307.P11463288492705695360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165956 ((a (n - 1) + 1) ^ 2).toNat

end

end A155307.P11463288492705695360

/-!
# A155308: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155308, there is no canonical definition to state claims against.
-/

/-! ## A155308.P10530156448199807062

`A130344(A206374(n))-A266256(n)`
-/

namespace A155308.P10530156448199807062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130344 (A206374 n).toNat - A266256 n

end

end A155308.P10530156448199807062

/-!
# A155309: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155309, there is no canonical definition to state claims against.
-/

/-! ## A155309.P17624869128180589197

`A128635(∑[∑[A041043(n)]])`
-/

namespace A155309.P17624869128180589197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155309.P17624869128180589197

/-!
# A155310: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 4,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155310, there is no canonical definition to state claims against.
-/

/-! ## A155310.P6122566314621606649

`A270122(A097111(n))`
-/

namespace A155310.P6122566314621606649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270122 (A097111 n).toNat

end

end A155310.P6122566314621606649

/-!
# A155311: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155311, there is no canonical definition to state claims against.
-/

/-! ## A155311.P11610212473181328312

`A163528(A000096(2^n)²)`
-/

namespace A155311.P11610212473181328312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A000096 (2 ^ n) ^ 2).toNat

end

end A155311.P11610212473181328312

/-!
# A155312: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 4,3 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155312, there is no canonical definition to state claims against.
-/

/-! ## A155312.P11563920404912018328

`A113534(A008258(n))`
-/

namespace A155312.P11563920404912018328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113534 (A008258 n).toNat

end

end A155312.P11563920404912018328

/-!
# A155313: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,2 3,0 3,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155313, there is no canonical definition to state claims against.
-/

/-! ## A155313.P14622231837966722046

`A033581(n)+A032742(A089067(2*n+3))`
-/

namespace A155313.P14622231837966722046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A032742 (A089067 (2 * n + 3)).toNat

end

end A155313.P14622231837966722046

/-!
# A155315: Number of ways to place zero or more nonadjacent 1,0 2,0 2,1 2,2 3,0 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155315, there is no canonical definition to state claims against.
-/

/-! ## A155315.P18128423865961804566

`or(A000262(A184973(n)), A113743(n+1))`
-/

namespace A155315.P18128423865961804566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000262 (A184973 n).toNat) (A113743 (n + 1))

end

end A155315.P18128423865961804566

/-! ## A155315.P267801245000364560

`or(A113743(n+1), A330628(A000045(n)))`
-/

namespace A155315.P267801245000364560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113743 (n + 1)) (A330628 (A000045 n).toNat)

end

end A155315.P267801245000364560

/-!
# A155316: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 2,2 3,0 3,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155316, there is no canonical definition to state claims against.
-/

/-! ## A155316.P10077618807938946910

`A022290(∑[A092791(n+1)²])`
-/

namespace A155316.P10077618807938946910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092791 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155316.P10077618807938946910

/-!
# A155318: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 2,2 3,1 4,1 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155318, there is no canonical definition to state claims against.
-/

/-! ## A155318.P10262905808948675871

`A154470(A155319(n+5))`
-/

namespace A155318.P10262905808948675871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A155319 (n + 5)).toNat

end

end A155318.P10262905808948675871

/-! ## A155318.P8113566335410089621

`A008615(6*A155319(n+5))`
-/

namespace A155318.P8113566335410089621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A155319 (n + 5)).toNat

end

end A155318.P8113566335410089621

/-!
# A155320: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,0 4,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155320, there is no canonical definition to state claims against.
-/

/-! ## A155320.P3378108126204336160

`A247064(A155238(n+3)%A155263(2*n+5))`
-/

namespace A155320.P3378108126204336160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (Int.tmod (A155238 (n + 3)) (A155263 (2 * n + 5))).toNat

end

end A155320.P3378108126204336160

/-! ## A155320.P2387572931588409246

`A247064(A155238(n+3))%A155238(2*n+7)`
-/

namespace A155320.P2387572931588409246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247064 (A155238 (n + 3)).toNat) (A155238 (2 * n + 7))

end

end A155320.P2387572931588409246

/-!
# A155322: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,1 3,1 3,2 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155322, there is no canonical definition to state claims against.
-/

/-! ## A155322.P17029690546928944005

`∑[A296484(A297629(n))]`
-/

namespace A155322.P17029690546928944005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 (A297629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155322.P17029690546928944005

/-! ## A155322.P10045767046108767570

`A005448(record[A358525(n)])`
-/

namespace A155322.P10045767046108767570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155322.P10045767046108767570

/-!
# A155323: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 2,2 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155323, there is no canonical definition to state claims against.
-/

/-! ## A155323.P3264619146370325069

`∩[A023779(n+1), A003215(n)]`
-/

namespace A155323.P3264619146370325069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155323.P3264619146370325069

/-!
# A155324: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 3,2 4,1 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155324, there is no canonical definition to state claims against.
-/

/-! ## A155324.P12941017486927162010

`A004719(A155325(n+5))`
-/

namespace A155324.P12941017486927162010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A155325 (n + 5)).toNat

end

end A155324.P12941017486927162010

/-! ## A155324.P11080167508042079974

`A155325(A037441(n+1)+4)`
-/

namespace A155324.P11080167508042079974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155325 (A037441 (n + 1) + 4).toNat

end

end A155324.P11080167508042079974

/-! ## A155324.P10059870512515155677

`A014681(A155325(n+5)+1)`
-/

namespace A155324.P10059870512515155677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A155325 (n + 5) + 1).toNat

end

end A155324.P10059870512515155677

/-!
# A155326: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 3,1 4,0 5,1 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155326, there is no canonical definition to state claims against.
-/

/-! ## A155326.P3384638083374514115

`A155413(n+5)%p?[∑[2^n]]`
-/

namespace A155326.P3384638083374514115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155413 (n + 5)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A155326.P3384638083374514115

/-! ## A155326.P2202995296998692411

`A155413(A073788(n)+5)`
-/

namespace A155326.P2202995296998692411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155413 (A073788 n + 5).toNat

end

end A155326.P2202995296998692411

/-! ## A155326.P14206139173540917684

`A001281(2*A155413(n+5))`
-/

namespace A155326.P14206139173540917684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A155413 (n + 5)).toNat

end

end A155326.P14206139173540917684

/-!
# A155327: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 3,2 4,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155327, there is no canonical definition to state claims against.
-/

/-! ## A155327.P4280178196929215355

`A033627(A001696(n)+∑[n+1])`
-/

namespace A155327.P4280178196929215355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A001696 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A155327.P4280178196929215355

/-!
# A155328: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 3,1 4,0 5,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155328, there is no canonical definition to state claims against.
-/

/-! ## A155328.P13568112608802375883

`A020952(A155130(n))`
-/

namespace A155328.P13568112608802375883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020952 (A155130 n).toNat

end

end A155328.P13568112608802375883

/-!
# A155329: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 4,1 4,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155329, there is no canonical definition to state claims against.
-/

/-! ## A155329.P7898246704245135199

`A269757(A333242(n+1)+A058289(n))`
-/

namespace A155329.P7898246704245135199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 (A333242 (n + 1) + A058289 n).toNat

end

end A155329.P7898246704245135199

/-!
# A155330: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,0 5,0 6,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155330, there is no canonical definition to state claims against.
-/

/-! ## A155330.P5450106022626057386

`A155386(A082743(n)+6)`
-/

namespace A155330.P5450106022626057386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155386 (A082743 n + 6).toNat

end

end A155330.P5450106022626057386

/-! ## A155330.P10532605060494375732

`A000027(A155386(n+7))`
-/

namespace A155330.P10532605060494375732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A155386 (n + 7)).toNat

end

end A155330.P10532605060494375732

/-! ## A155330.P12882041828667440376

`A155386(A001104(n+1)+6)`
-/

namespace A155330.P12882041828667440376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155386 (A001104 (n + 1) + 6).toNat

end

end A155330.P12882041828667440376

/-! ## A155330.P8494541356460787671

`A155386(A257554(n+1)+6)`
-/

namespace A155330.P8494541356460787671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155386 (A257554 (n + 1) + 6).toNat

end

end A155330.P8494541356460787671

/-! ## A155330.P16208351517650692836

`A155386(n+7)%A052447(n+4)`
-/

namespace A155330.P16208351517650692836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155386 (n + 7)) (A052447 (n + 4))

end

end A155330.P16208351517650692836

/-!
# A155331: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,0 5,0 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155331, there is no canonical definition to state claims against.
-/

/-! ## A155331.P12572736998743026350

`A154470(A155387(n+6))`
-/

namespace A155331.P12572736998743026350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A155387 (n + 6)).toNat

end

end A155331.P12572736998743026350

/-! ## A155331.P975756137516952990

`A155387((n+6)*A098233(n))`
-/

namespace A155331.P975756137516952990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155387 ((n + 6 : ℤ) * A098233 n).toNat

end

end A155331.P975756137516952990

/-!
# A155332: Number of ways to place zero or more nonadjacent 1,1 2,1 3,1 4,1 5,0 5,1 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155332, there is no canonical definition to state claims against.
-/

/-! ## A155332.P7284519316045809498

`A244435(n)+(3^C(a(n-1), 68)+n)!` with `a(0)=1`
-/

namespace A155332.P7284519316045809498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244435 n + (Nat.factorial (3 ^ Nat.choose (a (n - 1)).toNat 68 + n) : ℤ)

end

end A155332.P7284519316045809498

/-!
# A155333: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,1 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155333, there is no canonical definition to state claims against.
-/

/-! ## A155333.P6799057810030795715

`A260717(A191633(3*(n+1)))-A100219(2*n)`
-/

namespace A155333.P6799057810030795715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260717 (A191633 (3 * (n + 1))).toNat - A100219 (2 * n)

end

end A155333.P6799057810030795715

/-!
# A155334: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,1 4,2 5,2 5,3 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155334, there is no canonical definition to state claims against.
-/

/-! ## A155334.P17086125738882104724

`A318281(∑[8^n])+3*n`
-/

namespace A155334.P17086125738882104724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318281 (∑ j ∈ Finset.range (n + 1), f1 j) + (3 * n : ℤ)

end

end A155334.P17086125738882104724

/-!
# A155335: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,1 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155335, there is no canonical definition to state claims against.
-/

/-! ## A155335.P11154108878085151098

`A192048(A023612(n))`
-/

namespace A155335.P11154108878085151098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192048 (A023612 n).toNat

end

end A155335.P11154108878085151098

/-!
# A155336: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,1 5,2 5,3 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155336, there is no canonical definition to state claims against.
-/

/-! ## A155336.P6799562225196086637

`A002330(A360892(2*(n+2))-A232047(n+1))`
-/

namespace A155336.P6799562225196086637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A360892 (2 * (n + 2)) - A232047 (n + 1)).toNat

end

end A155336.P6799562225196086637

/-!
# A155337: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,2 4,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155337, there is no canonical definition to state claims against.
-/

/-! ## A155337.P7487891620301915889

`A155402(a(n-3))` with `a(0)=1, a(1)=4, a(2)=10, a(3)=22, a(4)=40`
-/

namespace A155337.P7487891620301915889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 22, 40] fun n a =>
  A155402 (a (n - 3)).toNat

end

end A155337.P7487891620301915889

/-!
# A155338: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,2 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155338, there is no canonical definition to state claims against.
-/

/-! ## A155338.P6771392791662492920

`A000267(10^n)-(-1)^n`
-/

namespace A155338.P6771392791662492920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (10 ^ n) - (-1) ^ n

end

end A155338.P6771392791662492920

/-!
# A155339: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 2,2 3,0 3,1 3,3 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155339, there is no canonical definition to state claims against.
-/

/-! ## A155339.P694763799780333621

`record[A162538(∑[A325862(n)])]`
-/

namespace A155339.P694763799780333621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155339.P694763799780333621

/-! ## A155339.P2106069441529905285

`A003229(eq[A217153(n+1), A331437(3*n)])`
-/

namespace A155339.P2106069441529905285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331437 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A155339.P2106069441529905285

/-!
# A155340: Number of ways to place zero or more nonadjacent 1,0 2,0 3,1 3,2 3,3 4,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155340, there is no canonical definition to state claims against.
-/

/-! ## A155340.P4582482065085233073

`A006530(A003215(n)*A004211(n))`
-/

namespace A155340.P4582482065085233073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003215 n * A004211 n).toNat

end

end A155340.P4582482065085233073

/-! ## A155340.P8047859572192295913

`A006530(A003215(n)*A216712(n))`
-/

namespace A155340.P8047859572192295913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003215 n * A216712 n).toNat

end

end A155340.P8047859572192295913

/-!
# A155341: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,0 3,1 3,2 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155341, there is no canonical definition to state claims against.
-/

/-! ## A155341.P17314350405269278259

`∑[A165707(∑[A036251(n)])]`
-/

namespace A155341.P17314350405269278259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165707 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155341.P17314350405269278259

/-! ## A155341.P331844668274629338

`A364350(A008000(n))+A003607(n)`
-/

namespace A155341.P331844668274629338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A008000 n).toNat + A003607 n

end

end A155341.P331844668274629338

/-!
# A155342: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 4,1 4,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155342, there is no canonical definition to state claims against.
-/

/-! ## A155342.P14333325470434578558

`A033879(A367677(n+1))+A028896(n)`
-/

namespace A155342.P14333325470434578558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A367677 (n + 1)).toNat + A028896 n

end

end A155342.P14333325470434578558

/-! ## A155342.P4168790103103945538

`A016777(n*A052340(n+1))-A079531(A050458(n+1))`
-/

namespace A155342.P4168790103103945538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) * A052340 (n + 1)).toNat - A079531 (A050458 (n + 1)).toNat

end

end A155342.P4168790103103945538

/-!
# A155343: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 3,2 4,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155343, there is no canonical definition to state claims against.
-/

/-! ## A155343.P11441423867699946037

`A155421(a(n-3))` with `a(0)=1, a(1)=4, a(2)=10, a(3)=22, a(4)=55`
-/

namespace A155343.P11441423867699946037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 22, 55] fun n a =>
  A155421 (a (n - 3)).toNat

end

end A155343.P11441423867699946037

/-! ## A155343.P4485156686301055026

`∑[∑[A071520(A129871(n))]]`
-/

namespace A155343.P4485156686301055026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071520 (A129871 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155343.P4485156686301055026

/-!
# A155344: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,0 4,1 5,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155344, there is no canonical definition to state claims against.
-/

/-! ## A155344.P16196397648698500637

`A295500(n+1)+A002264(A090351(n))`
-/

namespace A155344.P16196397648698500637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295500 (n + 1) + A002264 (A090351 n).toNat

end

end A155344.P16196397648698500637

/-! ## A155344.P16564222047421725433

`A002264(A090351(n))+A000010(2*A003462(n+1))`
-/

namespace A155344.P16564222047421725433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A090351 n).toNat + A000010 (2 * A003462 (n + 1)).toNat

end

end A155344.P16564222047421725433

/-!
# A155345: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,1 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155345, there is no canonical definition to state claims against.
-/

/-! ## A155345.P7186449062020552320

`A229848(A097111(n))`
-/

namespace A155345.P7186449062020552320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229848 (A097111 n).toNat

end

end A155345.P7186449062020552320

/-!
# A155346: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 4,1 5,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155346, there is no canonical definition to state claims against.
-/

/-! ## A155346.P12314691530872276776

`A155431(n+5)-A185284((n+1)²)`
-/

namespace A155346.P12314691530872276776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155431 (n + 5) - A185284 ((n + 1) ^ 2)

end

end A155346.P12314691530872276776

/-! ## A155346.P3725969041748907856

`A155398(n+6)-A349061(A016098(n))`
-/

namespace A155346.P3725969041748907856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155398 (n + 6) - A349061 (A016098 n).toNat

end

end A155346.P3725969041748907856

/-!
# A155347: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,2 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155347, there is no canonical definition to state claims against.
-/

/-! ## A155347.P1260268056687248722

`3*A161207(a(n-1)+2)/2+1` with `a(0)=1`
-/

namespace A155347.P1260268056687248722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((A161207 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℚ) / 2) + 1

end

end A155347.P1260268056687248722

/-!
# A155348: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 4,3 4,4 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155348, there is no canonical definition to state claims against.
-/

/-! ## A155348.P17174780424108862961

`A274528(A002802(n))`
-/

namespace A155348.P17174780424108862961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (A002802 n).toNat

end

end A155348.P17174780424108862961

/-! ## A155348.P349180611152080090

`A274528(∑[A085373(n)])`
-/

namespace A155348.P349180611152080090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155348.P349180611152080090

/-!
# A155350: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 4,2 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155350, there is no canonical definition to state claims against.
-/

/-! ## A155350.P12484031686886132941

`∑[A165801(2*(n+1))-1]+2*n`
-/

namespace A155350.P12484031686886132941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165801 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A155350.P12484031686886132941

/-!
# A155351: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 4,3 5,4 6,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155351, there is no canonical definition to state claims against.
-/

/-! ## A155351.P5766381067046371243

`∑[A325700(∑[A001187(n)])]`
-/

namespace A155351.P5766381067046371243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155351.P5766381067046371243

/-!
# A155353: Number of ways to place zero or more nonadjacent 2,1 2,2 3,0 3,1 3,3 4,2 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155353, there is no canonical definition to state claims against.
-/

/-! ## A155353.P4019788970750196436

`∏{p}[A155358(n+4)², #]`
-/

namespace A155353.P4019788970750196436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155358 (n + 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A155353.P4019788970750196436

/-!
# A155354: Number of ways to place zero or more nonadjacent 2,0 3,1 4,2 4,3 4,4 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155354, there is no canonical definition to state claims against.
-/

/-! ## A155354.P10895395015415159176

`record[A314144(n)%A233776(A001316(n))]`
-/

namespace A155354.P10895395015415159176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314144 n) (A233776 (A001316 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155354.P10895395015415159176

/-! ## A155354.P6869682924197798161

`A008443(A004211(n+1)-A017985(n))`
-/

namespace A155354.P6869682924197798161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (A004211 (n + 1) - A017985 n).toNat

end

end A155354.P6869682924197798161

/-! ## A155354.P8807898480775409581

`A322337(A005384(n+2))+A005228(n+1)`
-/

namespace A155354.P8807898480775409581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (A005384 (n + 2)).toNat + A005228 (n + 1)

end

end A155354.P8807898480775409581

/-!
# A155355: Number of ways to place zero or more nonadjacent 1,1 2,1 2,2 3,0 3,1 3,2 3,3 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155355, there is no canonical definition to state claims against.
-/

/-! ## A155355.P11113714356424411384

`A147064(A158292(2*n+1))+3*n²`
-/

namespace A155355.P11113714356424411384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147064 (A158292 (2 * n + 1)).toNat + (3 * n ^ 2 : ℤ)

end

end A155355.P11113714356424411384

/-! ## A155355.P4988632317741026740

`A038845(A051118(n))+A033428(n)`
-/

namespace A155355.P4988632317741026740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038845 (A051118 n).toNat + A033428 n

end

end A155355.P4988632317741026740

/-!
# A155356: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 2,1 2,2 3,1 3,2 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155356, there is no canonical definition to state claims against.
-/

/-! ## A155356.P7611915774404951323

`∑[6*A053188((n+1)^n+n)-3]+4`
-/

namespace A155356.P7611915774404951323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A053188 ((n + 1) ^ n + n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A155356.P7611915774404951323

/-! ## A155356.P13482107152910557182

`A273557(record[A303837(n+1)])`
-/

namespace A155356.P13482107152910557182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155356.P13482107152910557182

/-!
# A155357: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,1 3,0 3,1 4,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155357, there is no canonical definition to state claims against.
-/

/-! ## A155357.P17935164415062970819

`A154470(A155367(n+5))`
-/

namespace A155357.P17935164415062970819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A155367 (n + 5)).toNat

end

end A155357.P17935164415062970819

/-! ## A155357.P4347444336983672715

`A053625(n)!*A155367(n+5)`
-/

namespace A155357.P4347444336983672715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A053625 n).toNat : ℤ) * A155367 (n + 5)

end

end A155357.P4347444336983672715

/-!
# A155359: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 2,2 3,1 3,2 4,3 5,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155359, there is no canonical definition to state claims against.
-/

/-! ## A155359.P5580261316225280284

`A260059(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A155359.P5580261316225280284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260059 (a (n - 1)).toNat - a (n - 1)

end

end A155359.P5580261316225280284

/-!
# A155360: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 2,2 3,0 3,1 3,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155360, there is no canonical definition to state claims against.
-/

/-! ## A155360.P13538161650822718832

`∑[A133994(5^n+1)]`
-/

namespace A155360.P13538161650822718832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133994 (5 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155360.P13538161650822718832

/-! ## A155360.P12110407517227527193

`∑[∑[∑[A106823(n^n)]]]`
-/

namespace A155360.P12110407517227527193
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106823 (n ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155360.P12110407517227527193

/-!
# A155361: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 2,2 3,1 3,3 4,2 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155361, there is no canonical definition to state claims against.
-/

/-! ## A155361.P4583923343922101549

`A324011(A336128(n))+A003215(n)`
-/

namespace A155361.P4583923343922101549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324011 (A336128 n).toNat + A003215 n

end

end A155361.P4583923343922101549

/-! ## A155361.P68118405989554910

`A004523(A249622(n+1)+A069700(3*n+2))`
-/

namespace A155361.P68118405989554910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A249622 (n + 1) + A069700 (3 * n + 2)).toNat

end

end A155361.P68118405989554910

/-!
# A155362: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 2,2 3,1 3,2 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155362, there is no canonical definition to state claims against.
-/

/-! ## A155362.P3764939010925659754

`∑[A014465(A277393(n))]`
-/

namespace A155362.P3764939010925659754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014465 (A277393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155362.P3764939010925659754

/-! ## A155362.P4522787068379338719

`A162232(record[A231146(n)²])`
-/

namespace A155362.P4522787068379338719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231146 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155362.P4522787068379338719

/-!
# A155363: Number of ways to place zero or more nonadjacent 1,0 2,0 2,1 2,2 3,0 4,0 4,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155363, there is no canonical definition to state claims against.
-/

/-! ## A155363.P8749387335390774217

`A331425(A095793(n)+comp[2*(n+1)])`
-/

namespace A155363.P8749387335390774217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A095793 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A155363.P8749387335390774217

/-! ## A155363.P11901118821868458478

`6*A237291(A237250(2*(n+1)))+1`
-/

namespace A155363.P11901118821868458478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A237291 (A237250 (2 * (n + 1))).toNat + 1

end

end A155363.P11901118821868458478

/-!
# A155364: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 2,2 3,1 4,1 5,1 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155364, there is no canonical definition to state claims against.
-/

/-! ## A155364.P6478284381654058102

`A155365(n+6)%A155367(2*(n+4))`
-/

namespace A155364.P6478284381654058102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155365 (n + 6)) (A155367 (2 * (n + 4)))

end

end A155364.P6478284381654058102

/-! ## A155364.P9528559545871330188

`A155365(n+6)-val(A163787(3*n+1), 2)`
-/

namespace A155364.P9528559545871330188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155365 (n + 6) - (SequenceMachineLib.valuation (A163787 (3 * n + 1)).toNat 2 : ℤ)

end

end A155364.P9528559545871330188

/-!
# A155366: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,0 4,0 5,0 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155366, there is no canonical definition to state claims against.
-/

/-! ## A155366.P17816483651936305153

`A308237(a(n-1))` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A155366.P17816483651936305153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  A308237 (a (n - 1)).toNat

end

end A155366.P17816483651936305153

/-!
# A155369: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,1 3,1 3,2 4,1 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155369, there is no canonical definition to state claims against.
-/

/-! ## A155369.P3488549643224355361

`A349462(comp[∑[3-n%3]-1]+2^n)`
-/

namespace A155369.P3488549643224355361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 ^ n)

end

end A155369.P3488549643224355361

/-! ## A155369.P6490830266948314427

`A255724(A301022(n))`
-/

namespace A155369.P6490830266948314427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (A301022 n).toNat

end

end A155369.P6490830266948314427

/-!
# A155370: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,1 3,1 4,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155370, there is no canonical definition to state claims against.
-/

/-! ## A155370.P5846616396494344591

`A092653(A022786(n+1))+A003215(n)`
-/

namespace A155370.P5846616396494344591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092653 (A022786 (n + 1)).toNat + A003215 n

end

end A155370.P5846616396494344591

/-! ## A155370.P9910939556875907266

`A092653(A261170(n+1))+A003215(n)`
-/

namespace A155370.P9910939556875907266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092653 (A261170 (n + 1)).toNat + A003215 n

end

end A155370.P9910939556875907266

/-!
# A155371: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 3,2 3,3 4,1 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155371, there is no canonical definition to state claims against.
-/

/-! ## A155371.P6220878764140116223

`A037125(2^n+6^n+1)`
-/

namespace A155371.P6220878764140116223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (2 ^ n + 6 ^ n + 1)

end

end A155371.P6220878764140116223

/-! ## A155371.P6802757020738329583

`A153671(A356984(n))`
-/

namespace A155371.P6802757020738329583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A356984 n).toNat

end

end A155371.P6802757020738329583

/-!
# A155374: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,0 3,1 4,1 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155374, there is no canonical definition to state claims against.
-/

/-! ## A155374.P18271215836139176504

`A357501(A004394(n+1))+A238244(n+1)`
-/

namespace A155374.P18271215836139176504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357501 (A004394 (n + 1)).toNat + A238244 (n + 1)

end

end A155374.P18271215836139176504

/-!
# A155375: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,0 4,0 4,1 5,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155375, there is no canonical definition to state claims against.
-/

/-! ## A155375.P7501575093169164964

`A335458(A303814(n))+A014445(n)`
-/

namespace A155375.P7501575093169164964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (A303814 n).toNat + A014445 n

end

end A155375.P7501575093169164964

/-! ## A155375.P14128976848279513044

`A150818(n)+A056239(A191778(n+1))`
-/

namespace A155375.P14128976848279513044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150818 n + A056239 (A191778 (n + 1)).toNat

end

end A155375.P14128976848279513044

/-!
# A155376: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 3,2 4,1 5,1 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155376, there is no canonical definition to state claims against.
-/

/-! ## A155376.P4544116675245965775

`A155377(A001096(n)+6)`
-/

namespace A155376.P4544116675245965775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155377 (A001096 n + 6).toNat

end

end A155376.P4544116675245965775

/-! ## A155376.P374628998889772841

`A155377(n+6)%A155352(3*n+5)`
-/

namespace A155376.P374628998889772841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155377 (n + 6)) (A155352 (3 * n + 5))

end

end A155376.P374628998889772841

/-!
# A155377: Number of ways to place zero or more nonadjacent 1,1 2,1 3,1 3,2 4,0 4,1 5,1 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155377, there is no canonical definition to state claims against.
-/

/-! ## A155377.P15134986549783582300

`or(A004442(A155376(n+6)), A147130(n+1))`
-/

namespace A155377.P15134986549783582300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004442 (A155376 (n + 6)).toNat) (A147130 (n + 1))

end

end A155377.P15134986549783582300

/-! ## A155377.P4332958856252818771

`A093048(or(A147130(n+1), A155376(n+6)))`
-/

namespace A155377.P4332958856252818771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (Int.lor (A147130 (n + 1)) (A155376 (n + 6))).toNat

end

end A155377.P4332958856252818771

/-! ## A155377.P15225344063183768835

`or(A052126(A155387(n+6)), A155376(n+6))`
-/

namespace A155377.P15225344063183768835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052126 (A155387 (n + 6)).toNat) (A155376 (n + 6))

end

end A155377.P15225344063183768835

/-!
# A155380: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,1 3,2 4,2 5,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155380, there is no canonical definition to state claims against.
-/

/-! ## A155380.P7558997890078422345

`A018543(n+1)%Δ[n²]²+1`
-/

namespace A155380.P7558997890078422345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018543 (n + 1)) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) + 1

end

end A155380.P7558997890078422345

/-! ## A155380.P12207517118307378568

`∑[A140516(A173422(n))]`
-/

namespace A155380.P12207517118307378568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140516 (A173422 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155380.P12207517118307378568

/-!
# A155381: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,2 3,3 4,3 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155381, there is no canonical definition to state claims against.
-/

/-! ## A155381.P6494442869612240090

`A016777(n*A052340(n+1))`
-/

namespace A155381.P6494442869612240090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) * A052340 (n + 1)).toNat

end

end A155381.P6494442869612240090

/-! ## A155381.P12611030617284573388

`A065713(n*A052340(n+1))`
-/

namespace A155381.P12611030617284573388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065713 ((n : ℤ) * A052340 (n + 1)).toNat

end

end A155381.P12611030617284573388

/-!
# A155382: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,2 4,2 4,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155382, there is no canonical definition to state claims against.
-/

/-! ## A155382.P4259715666672424608

`A126356(A007518(n+1)+1)`
-/

namespace A155382.P4259715666672424608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126356 (A007518 (n + 1) + 1).toNat

end

end A155382.P4259715666672424608

/-! ## A155382.P13940830861552635715

`A195933(A164990(n+1))-2`
-/

namespace A155382.P13940830861552635715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195933 (A164990 (n + 1)).toNat - 2

end

end A155382.P13940830861552635715

/-!
# A155383: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 4,1 4,2 5,1 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155383, there is no canonical definition to state claims against.
-/

/-! ## A155383.P6658150960970591568

`A293689(A289779(n))`
-/

namespace A155383.P6658150960970591568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293689 (A289779 n).toNat

end

end A155383.P6658150960970591568

/-! ## A155383.P11025940656033571293

`A268448(n+1)+A126606(A002110(n))`
-/

namespace A155383.P11025940656033571293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1) + A126606 (A002110 n).toNat

end

end A155383.P11025940656033571293

/-!
# A155384: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 3,1 4,1 5,1 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155384, there is no canonical definition to state claims against.
-/

/-! ## A155384.P6930768661384420761

`A339756(∑[2^n])+∑[n+2]-2`
-/

namespace A155384.P6930768661384420761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339756 (∑ j ∈ Finset.range (n + 1), f1 j) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

end

end A155384.P6930768661384420761

/-!
# A155385: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 3,1 4,1 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155385, there is no canonical definition to state claims against.
-/

/-! ## A155385.P14429496872274876931

`A361808(A146533(n))`
-/

namespace A155385.P14429496872274876931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A146533 n).toNat

end

end A155385.P14429496872274876931

/-!
# A155389: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,1 4,2 4,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155389, there is no canonical definition to state claims against.
-/

/-! ## A155389.P775680477127937842

`A045943(n)+A008612(A137567(n+1))`
-/

namespace A155389.P775680477127937842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + A008612 (A137567 (n + 1)).toNat

end

end A155389.P775680477127937842

/-!
# A155390: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,1 5,1 6,1 7,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155390, there is no canonical definition to state claims against.
-/

/-! ## A155390.P2652124625456177377

`A218616((3*n*2^(n-1)+1-n)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A155390.P2652124625456177377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 (SequenceMachineLib.roundAway ((3 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1 - (n : ℚ)) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))).toNat

end

end A155390.P2652124625456177377

/-!
# A155393: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,1 4,2 4,3 4,4 5,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155393, there is no canonical definition to state claims against.
-/

/-! ## A155393.P4321434364994113233

`A089576(or((n+1)*Δ[n^3], A002110(n)))`
-/

namespace A155393.P4321434364994113233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (Int.lor ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (A002110 n)).toNat

end

end A155393.P4321434364994113233

/-!
# A155394: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 4,2 4,3 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155394, there is no canonical definition to state claims against.
-/

/-! ## A155394.P1346696809628576783

`A215800(∑[record[A336321(n+1)]])`
-/

namespace A155394.P1346696809628576783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336321 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155394.P1346696809628576783

/-! ## A155394.P8324943210889701795

`A326667(A343601(n)+A153663(n+1))`
-/

namespace A155394.P8324943210889701795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326667 (A343601 n + A153663 (n + 1)).toNat

end

end A155394.P8324943210889701795

/-!
# A155395: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 3,2 4,1 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155395, there is no canonical definition to state claims against.
-/

/-! ## A155395.P2351481142749285297

`A048293(A003480(n+1))-A047780(n)`
-/

namespace A155395.P2351481142749285297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048293 (A003480 (n + 1)).toNat - A047780 n

end

end A155395.P2351481142749285297

/-!
# A155396: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 3,2 4,3 5,3 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155396, there is no canonical definition to state claims against.
-/

/-! ## A155396.P13101109829273244286

`filter[A191868(2*n+1), A113998(#)]`
-/

namespace A155396.P13101109829273244286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191868 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A113998 (f1 j).toNat = 1) n)

end

end A155396.P13101109829273244286

/-!
# A155397: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,0 4,1 5,0 6,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155397, there is no canonical definition to state claims against.
-/

/-! ## A155397.P16102443664528659977

`A130987(A151105(n))+n`
-/

namespace A155397.P16102443664528659977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130987 (A151105 n).toNat + (n : ℤ)

end

end A155397.P16102443664528659977

/-! ## A155397.P7159921839881675438

`A108954(A097790(n)+A007827(n))`
-/

namespace A155397.P7159921839881675438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A097790 n + A007827 n).toNat

end

end A155397.P7159921839881675438

/-!
# A155398: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 4,2 5,2 5,3 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155398, there is no canonical definition to state claims against.
-/

/-! ## A155398.P16757048427611756225

`A349061(A016098(n))+A155346(n+5)`
-/

namespace A155398.P16757048427611756225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349061 (A016098 n).toNat + A155346 (n + 5)

end

end A155398.P16757048427611756225

/-! ## A155398.P8674216384332831404

`A155431(n+5)-A185284(A001519(n))`
-/

namespace A155398.P8674216384332831404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155431 (n + 5) - A185284 (A001519 n).toNat

end

end A155398.P8674216384332831404

/-!
# A155399: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,1 5,1 6,0 6,1 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155399, there is no canonical definition to state claims against.
-/

/-! ## A155399.P12442542319826931142

`∑[A227224(a(n-1))]` with `a(0)=1, a(1)=6, a(2)=12`
-/

namespace A155399.P12442542319826931142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 12] fun n f1 =>
  A227224 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155399.P12442542319826931142

