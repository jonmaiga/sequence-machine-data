import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A189500: Number of arrangements of 4 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189500, there is no canonical definition to state claims against.
-/

/-! ## A189500.P11559494951799615498

`A189498(∑[n+2]+4)`
-/

namespace A189500.P11559494951799615498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189500.P11559494951799615498

/-! ## A189500.P13718189542684101944

`lcm(2, A189498(A167614(n+1)))`
-/

namespace A189500.P13718189542684101944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189498 (A167614 (n + 1)).toNat)

end

end A189500.P13718189542684101944

/-! ## A189500.P17713641202559415069

`A057427(n)*A189498(A167614(n+1))`
-/

namespace A189500.P17713641202559415069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A189498 (A167614 (n + 1)).toNat

end

end A189500.P17713641202559415069

/-! ## A189500.P16277342184236831960

`A178334(n)*A189498(A167614(n+1))`
-/

namespace A189500.P16277342184236831960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A189498 (A167614 (n + 1)).toNat

end

end A189500.P16277342184236831960

/-! ## A189500.P3064796685359817505

`A189498(A167614(n+1))%A017188(n)`
-/

namespace A189500.P3064796685359817505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189498 (A167614 (n + 1)).toNat) (A017188 n)

end

end A189500.P3064796685359817505

/-!
# A189501: Number of arrangements of 5 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189501, there is no canonical definition to state claims against.
-/

/-! ## A189501.P14191146414272035527

`A189498(A052905(n)+9)`
-/

namespace A189501.P14191146414272035527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A052905 n + 9).toNat

end

end A189501.P14191146414272035527

/-! ## A189501.P18212396009433016043

`A189498(A055999(n)+10)`
-/

namespace A189501.P18212396009433016043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A055999 n + 10).toNat

end

end A189501.P18212396009433016043

/-! ## A189501.P7572704175870908434

`A189498(A167614(n+2)+1)`
-/

namespace A189501.P7572704175870908434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A167614 (n + 2) + 1).toNat

end

end A189501.P7572704175870908434

/-! ## A189501.P4571479134124905063

`A189498(A167499(n+2)-1)`
-/

namespace A189501.P4571479134124905063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A167499 (n + 2) - 1).toNat

end

end A189501.P4571479134124905063

/-! ## A189501.P14464910701373784624

`A189498(A166136(n+2)-2)`
-/

namespace A189501.P14464910701373784624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A166136 (n + 2) - 2).toNat

end

end A189501.P14464910701373784624

/-!
# A189502: Number of arrangements of 6 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189502, there is no canonical definition to state claims against.
-/

/-! ## A189502.P8578768544710762674

`A189498(A167499(n+3))`
-/

namespace A189502.P8578768544710762674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A167499 (n + 3)).toNat

end

end A189502.P8578768544710762674

/-! ## A189502.P17379475306009192401

`A189498(A155212(n)+13)`
-/

namespace A189502.P17379475306009192401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A155212 n + 13).toNat

end

end A189502.P17379475306009192401

/-! ## A189502.P2549626402506792410

`A189498(A056000(n)+15)`
-/

namespace A189502.P2549626402506792410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A056000 n + 15).toNat

end

end A189502.P2549626402506792410

/-! ## A189502.P10994728218749169194

`A189498(A000124(n+5)-(n+1))`
-/

namespace A189502.P10994728218749169194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A189502.P10994728218749169194

/-! ## A189502.P3957140646637602753

`A189498(A034856(n+2)+n+11)`
-/

namespace A189502.P3957140646637602753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A034856 (n + 2) + (n + 11 : ℤ)).toNat

end

end A189502.P3957140646637602753

/-!
# A189503: Number of arrangements of 7 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189503, there is no canonical definition to state claims against.
-/

/-! ## A189503.P17727783822616298227

`A189498(A166136(n+4))`
-/

namespace A189503.P17727783822616298227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A166136 (n + 4)).toNat

end

end A189503.P17727783822616298227

/-! ## A189503.P11565166415452408088

`A189498(Δ[A264443(n)]+10)`
-/

namespace A189503.P11565166415452408088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n + 10).toNat

end

end A189503.P11565166415452408088

/-! ## A189503.P6648401256903773820

`A189498(A000124(n+5)+5)`
-/

namespace A189503.P6648401256903773820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000124 (n + 5) + 5).toNat

end

end A189503.P6648401256903773820

/-! ## A189503.P6921668595247374905

`A189498(A000217(n+5)+6)`
-/

namespace A189503.P6921668595247374905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000217 (n + 5) + 6).toNat

end

end A189503.P6921668595247374905

/-! ## A189503.P14323241452828175591

`A189498(A046691(n+3)+10)`
-/

namespace A189503.P14323241452828175591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A046691 (n + 3) + 10).toNat

end

end A189503.P14323241452828175591

/-!
# A189504: Number of arrangements of 8 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189504, there is no canonical definition to state claims against.
-/

/-! ## A189504.P16548007886735004689

`A189498(A167487(n+5))`
-/

namespace A189504.P16548007886735004689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A167487 (n + 5)).toNat

end

end A189504.P16548007886735004689

/-! ## A189504.P16177892914858319031

`A189498(A166136(n+5)+1)`
-/

namespace A189504.P16177892914858319031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A166136 (n + 5) + 1).toNat

end

end A189504.P16177892914858319031

/-! ## A189504.P8080799387752573452

`A189498(A167499(n+5)+2)`
-/

namespace A189504.P8080799387752573452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A167499 (n + 5) + 2).toNat

end

end A189504.P8080799387752573452

/-! ## A189504.P1654202564156923284

`A189498(A167614(n+5)+4)`
-/

namespace A189504.P1654202564156923284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A167614 (n + 5) + 4).toNat

end

end A189504.P1654202564156923284

/-! ## A189504.P11435542249411774794

`A189498(A000217(n+6)+7)`
-/

namespace A189504.P11435542249411774794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000217 (n + 6) + 7).toNat

end

end A189504.P11435542249411774794

/-!
# A189505: Number of arrangements of 9 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189505, there is no canonical definition to state claims against.
-/

/-! ## A189505.P5788604225116782478

`A189498(eq[13, A066657(n)])`
-/

namespace A189505.P5788604225116782478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189505.P5788604225116782478

/-! ## A189505.P7557828133387948443

`A189498(A000096(n+6)+9)`
-/

namespace A189505.P7557828133387948443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000096 (n + 6) + 9).toNat

end

end A189505.P7557828133387948443

/-! ## A189505.P13887375743420119561

`A189498(A052905(n+4)+13)`
-/

namespace A189505.P13887375743420119561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A052905 (n + 4) + 13).toNat

end

end A189505.P13887375743420119561

/-! ## A189505.P7844980988290507299

`A189498(eq[9, A131818(n+1)])`
-/

namespace A189505.P7844980988290507299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189505.P7844980988290507299

/-! ## A189505.P8188001714530951944

`A189498(Δ[A264443(n+2)]+12)`
-/

namespace A189505.P8188001714530951944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n + 12).toNat

end

end A189505.P8188001714530951944

/-!
# A189506: Irregular triangle read by rows in which row n (n >= 1) lists the base-10 lunar divisors of n.

The programs for A189506, there is no canonical definition to state claims against.
-/

/-! ## A189506.P3161712108198933205

`A007953(A248014(n+1)%A108203(n+1))`
-/

namespace A189506.P3161712108198933205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A248014 (n + 1)) (A108203 (n + 1))).toNat

end

end A189506.P3161712108198933205

/-! ## A189506.P18312494281266239566

`A286852(2^(comp[∑[n]]-n))+A007953(A248014(n+1))`
-/

namespace A189506.P18312494281266239566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat + A007953 (A248014 (n + 1)).toNat

end

end A189506.P18312494281266239566

/-! ## A189506.P13279212318513957384

`A007953(A248014(n+1))+A000038(A110488(n))`
-/

namespace A189506.P13279212318513957384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A248014 (n + 1)).toNat + A000038 (A110488 n).toNat

end

end A189506.P13279212318513957384

/-! ## A189506.P15916348000890905853

`A007953(A248014(n+1))+A000038(A317084(n))`
-/

namespace A189506.P15916348000890905853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A248014 (n + 1)).toNat + A000038 (A317084 n).toNat

end

end A189506.P15916348000890905853

/-! ## A189506.P3637582215699357602

`A007953(A248014(n+1))%A003357(A052283(n))`
-/

namespace A189506.P3637582215699357602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A248014 (n + 1)).toNat) (A003357 (A052283 n).toNat)

end

end A189506.P3637582215699357602

/-! ## A189506.P13559467787213467759

`A007953(A248014(n+1))+A000007(A132743(n+1))`
-/

namespace A189506.P13559467787213467759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A248014 (n + 1)).toNat + A000007 (A132743 (n + 1)).toNat

end

end A189506.P13559467787213467759

/-! ## A189506.P17565837114079996854

`A010888(91*A304366(n+1))`
-/

namespace A189506.P17565837114079996854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (91 * A304366 (n + 1)).toNat

end

end A189506.P17565837114079996854

/-! ## A189506.P11468354105433766084

`A054055(A214527(n+1))`
-/

namespace A189506.P11468354105433766084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A214527 (n + 1)).toNat

end

end A189506.P11468354105433766084

/-!
# A189508: Column 2 of triangle in A189507.

The programs for A189508, there is no canonical definition to state claims against.
-/

/-! ## A189508.P1135169714980888553

`record[A189507(comp[∑[n]])]`
-/

namespace A189508.P1135169714980888553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189507 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189508.P1135169714980888553

/-! ## A189508.P11868308346907059325

`A189507(∑[n+1]+1)`
-/

namespace A189508.P11868308346907059325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189507 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189508.P11868308346907059325

/-! ## A189508.P10375784210914944690

`record[A113704(n)*A189507(n)]`
-/

namespace A189508.P10375784210914944690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 n * A189507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189508.P10375784210914944690

/-! ## A189508.P17984348149040452314

`record[gcd(A100257(n), A189507(n))]`
-/

namespace A189508.P17984348149040452314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100257 n) (A189507 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189508.P17984348149040452314

/-! ## A189508.P8404813471449260116

`record[and(A189507(n), A283272(n))]`
-/

namespace A189508.P8404813471449260116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189507 n) (A283272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189508.P8404813471449260116

/-!
# A189509: Column 3 of triangle in A189507.

The programs for A189509, there is no canonical definition to state claims against.
-/

/-! ## A189509.P14638165169862649341

`A189507(∑[n+2]+3)`
-/

namespace A189509.P14638165169862649341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189507 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A189509.P14638165169862649341

/-!
# A189510: Digital root of n^n.

The programs for A189510, the canonical program `A189510.P12330447436739377713` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189510 has offset 0).

The definition of A189510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189510.P12330447436739377713

`dr(n^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189510

/-- `dr(n^n)` -/
def P12330447436739377713.Spec : Prop :=
  ∀ n, (P12330447436739377713.a n : ℤ) = A189510 n

theorem P12330447436739377713.correct : P12330447436739377713.Spec := by
  intro n
  simp only [A189510]

end A189510

/-!
# A189512: n+[ns/r]+[nt/r]; r=1, s=e/3, t=3/e.

The programs for A189512, there is no canonical definition to state claims against.
-/

/-! ## A189512.P3561012085142515276

`A000194(A189513(n+1)*A189514(n+1))`
-/

namespace A189512.P3561012085142515276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A189513 (n + 1) * A189514 (n + 1)).toNat

end

end A189512.P3561012085142515276

/-! ## A189512.P8140372663666681393

`A137734(A189513(n+1)*A189514(n+1))`
-/

namespace A189512.P8140372663666681393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A189513 (n + 1) * A189514 (n + 1)).toNat

end

end A189512.P8140372663666681393

/-! ## A189512.P2502267811958818895

`3*(n+1)-A168046(A249250(2*n))`
-/

namespace A189512.P2502267811958818895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A168046 (A249250 (2 * n)).toNat

end

end A189512.P2502267811958818895

/-! ## A189512.P8588527866756289831

`A092670(A333765(3*(n+1)))+A016777(n)`
-/

namespace A189512.P8588527866756289831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (A333765 (3 * (n + 1))).toNat + A016777 n

end

end A189512.P8588527866756289831

/-! ## A189512.P3644147966145136972

`A244227(A343088(n))+3*n+1`
-/

namespace A189512.P3644147966145136972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (A343088 n).toNat + (3 * n + 1 : ℤ)

end

end A189512.P3644147966145136972

/-!
# A189513: n+[nr/s]+[nt/s]; r=1, s=e/3, t=3/e.

The programs for A189513, there is no canonical definition to state claims against.
-/

/-! ## A189513.P14575586460558758643

`A247064(A330066(3*(n+1))-A329825(n+1))`
-/

namespace A189513.P14575586460558758643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (A330066 (3 * (n + 1)) - A329825 (n + 1)).toNat

end

end A189513.P14575586460558758643

/-! ## A189513.P15928422588234736422

`A247064(A330115(n+1)%A330066(3*n+5))`
-/

namespace A189513.P15928422588234736422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (Int.tmod (A330115 (n + 1)) (A330066 (3 * n + 5))).toNat

end

end A189513.P15928422588234736422

/-! ## A189513.P5941448466990095361

`A247064(A330115(n+1)%A032530(n+1))`
-/

namespace A189513.P5941448466990095361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (Int.tmod (A330115 (n + 1)) (A032530 (n + 1))).toNat

end

end A189513.P5941448466990095361

/-! ## A189513.P1856029836185146826

`A330115(A077342(n+1))+∑[A025468(n)]`
-/

namespace A189513.P1856029836185146826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330115 (A077342 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189513.P1856029836185146826

/-! ## A189513.P737165212463718518

`A331995(3*n+4)-A057237(A249530(n+1))`
-/

namespace A189513.P737165212463718518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (3 * n + 4) - A057237 (A249530 (n + 1)).toNat

end

end A189513.P737165212463718518

/-!
# A189514: n+[nr/t]+[ns/t]; r=1, s=e/3, t=3/e.

The programs for A189514, there is no canonical definition to state claims against.
-/

/-! ## A189514.P847905926356986548

`record[A057979(A190083(n+1))]%A294676(n+1)`
-/

namespace A189514.P847905926356986548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190083 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A294676 (n + 1))

end

end A189514.P847905926356986548

/-! ## A189514.P16885362983807547930

`record[A057979(A190083(n+1))-A034443(n+1)]`
-/

namespace A189514.P16885362983807547930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A190083 (n + 1)).toNat - A034443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189514.P16885362983807547930

/-! ## A189514.P379314167400948114

`A091333(A005520(2*n+1))+n`
-/

namespace A189514.P379314167400948114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (A005520 (2 * n + 1)).toNat + (n : ℤ)

end

end A189514.P379314167400948114

/-! ## A189514.P11749452084531780763

`A391592(A311261(n))`
-/

namespace A189514.P11749452084531780763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391592 (A311261 n).toNat

end

end A189514.P11749452084531780763

/-!
# A189515: a(n) = n + [ns] + [nt]; s=Pi/2, t=2/Pi.

The programs for A189515, the canonical program `A189515.P13768782672039770676` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189515 has offset 1).

The definition of A189515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189515.P13768782672039770676

`n+1+A140758(n+1)+floor(2*(n+1)/π)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189515

/-- `n+1+A140758(n+1)+floor(2*(n+1)/π)` -/
def P13768782672039770676.Spec : Prop :=
  ∀ n, P13768782672039770676.a n = A189515 (n + 1)

theorem P13768782672039770676.correct : P13768782672039770676.Spec := by
  intro n
  simp only [A189515, Nat.add_sub_cancel]

end A189515

/-! ## A189515.P7426926543418875644

`A140758(n+1)+comp[A140758(n)+n]`
-/

namespace A189515.P7426926543418875644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A189515.P7426926543418875644

namespace A189515

/-- `A140758(n+1)+comp[A140758(n)+n]` -/
def P7426926543418875644.Spec : Prop :=
  ∀ n, P7426926543418875644.a n = A189515 (n + 1)

end A189515

/-! ## A189515.P5245241025998753903

`A292636(A292652(n+1))+A106454(A106453(n+1))`
-/

namespace A189515.P5245241025998753903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292636 (A292652 (n + 1)).toNat + A106454 (A106453 (n + 1)).toNat

end

end A189515.P5245241025998753903

namespace A189515

/-- `A292636(A292652(n+1))+A106454(A106453(n+1))` -/
def P5245241025998753903.Spec : Prop :=
  ∀ n, P5245241025998753903.a n = A189515 (n + 1)

end A189515

/-! ## A189515.P10433271223320677243

`A292636(A292652(n+1))+A000005(A000079(n))`
-/

namespace A189515.P10433271223320677243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292636 (A292652 (n + 1)).toNat + A000005 (A000079 n).toNat

end

end A189515.P10433271223320677243

namespace A189515

/-- `A292636(A292652(n+1))+A000005(A000079(n))` -/
def P10433271223320677243.Spec : Prop :=
  ∀ n, P10433271223320677243.a n = A189515 (n + 1)

end A189515

/-! ## A189515.P16695257722730868169

`A140758(n+1)+A194640(n)+A000005(A000079(n))`
-/

namespace A189515.P16695257722730868169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (n + 1) + (A194640 n + A000005 (A000079 n).toNat)

end

end A189515.P16695257722730868169

namespace A189515

/-- `A140758(n+1)+A194640(n)+A000005(A000079(n))` -/
def P16695257722730868169.Spec : Prop :=
  ∀ n, P16695257722730868169.a n = A189515 (n + 1)

end A189515

/-!
# A189516: a(n) = n + [nr/s] + [nt/s]; r=1, s=Pi/2, t=2/Pi.

The programs for A189516, there is no canonical definition to state claims against.
-/

/-! ## A189516.P16609922512611634858

`A037833(A158313(n+1))+2*n`
-/

namespace A189516.P16609922512611634858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A158313 (n + 1)).toNat + (2 * n : ℤ)

end

end A189516.P16609922512611634858

/-! ## A189516.P14698975154104682809

`A190345(n+1)+A025465(A024319(n+1))`
-/

namespace A189516.P14698975154104682809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190345 (n + 1) + A025465 (A024319 (n + 1)).toNat

end

end A189516.P14698975154104682809

/-! ## A189516.P4294349341100642715

`A212619(A246392(n+4))+A190345(n+1)`
-/

namespace A189516.P4294349341100642715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A246392 (n + 4)).toNat + A190345 (n + 1)

end

end A189516.P4294349341100642715

/-! ## A189516.P4914928909732869250

`A190345(n+1)+A000007(A077728(n+1))`
-/

namespace A189516.P4914928909732869250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190345 (n + 1) + A000007 (A077728 (n + 1)).toNat

end

end A189516.P4914928909732869250

/-! ## A189516.P919914809581482959

`A088569(A336128(n+1))+A005843(n)`
-/

namespace A189516.P919914809581482959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A336128 (n + 1)).toNat + A005843 n

end

end A189516.P919914809581482959

/-!
# A189517: a(n) = n + [nr/t] + [ns/t]; r=1, s=Pi/2, t=2/Pi.

The programs for A189517, there is no canonical definition to state claims against.
-/

/-! ## A189517.P7450179479444885306

`A329999(2*(n+1))+A329843(n+1)`
-/

namespace A189517.P7450179479444885306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329999 (2 * (n + 1)) + A329843 (n + 1)

end

end A189517.P7450179479444885306

/-! ## A189517.P3961695267690335749

`A088950(A110880(n))+A016897(n)`
-/

namespace A189517.P3961695267690335749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (A110880 n).toNat + A016897 n

end

end A189517.P3961695267690335749

/-! ## A189517.P2376915659842503391

`A016861(n+1)-(A147325(n+1)%2+1)`
-/

namespace A189517.P2376915659842503391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (n + 1) - (Int.tmod (A147325 (n + 1)) 2 + 1)

end

end A189517.P2376915659842503391

/-! ## A189517.P6570386403652415897

`A016861(n+1)-(A147331(n+1)%2+1)`
-/

namespace A189517.P6570386403652415897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (n + 1) - (Int.tmod (A147331 (n + 1)) 2 + 1)

end

end A189517.P6570386403652415897

/-! ## A189517.P18387400816771123683

`A016885(n)+A005089(A341383(n+2))`
-/

namespace A189517.P18387400816771123683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + A005089 (A341383 (n + 2)).toNat

end

end A189517.P18387400816771123683

/-!
# A189518: n+[ns/r]+[nt/r]; r=1, s=1/e, t=1/(e+1).

The programs for A189518, the canonical program `A189518.P2913336897340290057` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189518 has offset 1).

The definition of A189518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189518.P11729077892005417721

`A189520(n+1)-(A189519(n+1)+1)`
-/

namespace A189518.P11729077892005417721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189520 (n + 1) - (A189519 (n + 1) + 1)

end

end A189518.P11729077892005417721

namespace A189518

/-- `A189520(n+1)-(A189519(n+1)+1)` -/
def P11729077892005417721.Spec : Prop :=
  ∀ n, P11729077892005417721.a n = A189518 (n + 1)

end A189518

/-! ## A189518.P15897529180740118148

`A292647(n+1)-A292646(n+1)+n`
-/

namespace A189518.P15897529180740118148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292647 (n + 1) - A292646 (n + 1) + (n : ℤ)

end

end A189518.P15897529180740118148

namespace A189518

/-- `A292647(n+1)-A292646(n+1)+n` -/
def P15897529180740118148.Spec : Prop :=
  ∀ n, P15897529180740118148.a n = A189518 (n + 1)

end A189518

/-! ## A189518.P2913336897340290057

`A006594(n+1)+∑[char[A000572(n+1)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189518

/-- `A006594(n+1)+∑[char[A000572(n+1)]]` -/
def P2913336897340290057.Spec : Prop :=
  ∀ n, P2913336897340290057.a n = A189518 (n + 1)

theorem P2913336897340290057.correct : P2913336897340290057.Spec := by
  intro n
  simp only [A189518, Nat.add_sub_cancel]

end A189518

/-! ## A189518.P4745085956086393460

`A292647(n+1)-A008619(A292665(n+1))`
-/

namespace A189518.P4745085956086393460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292647 (n + 1) - A008619 (A292665 (n + 1)).toNat

end

end A189518.P4745085956086393460

namespace A189518

/-- `A292647(n+1)-A008619(A292665(n+1))` -/
def P4745085956086393460.Spec : Prop :=
  ∀ n, P4745085956086393460.a n = A189518 (n + 1)

end A189518

/-! ## A189518.P17525483187031946343

`A006594(n+1)-A004526(A292665(n+1))+n`
-/

namespace A189518.P17525483187031946343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) - A004526 (A292665 (n + 1)).toNat + (n : ℤ)

end

end A189518.P17525483187031946343

namespace A189518

/-- `A006594(n+1)-A004526(A292665(n+1))+n` -/
def P17525483187031946343.Spec : Prop :=
  ∀ n, P17525483187031946343.a n = A189518 (n + 1)

end A189518

/-! ## A189518.P14916280536621792070

`A292646(A006594(n+1))-A004526(A292665(n+1))`
-/

namespace A189518.P14916280536621792070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292646 (A006594 (n + 1)).toNat - A004526 (A292665 (n + 1)).toNat

end

end A189518.P14916280536621792070

namespace A189518

/-- `A292646(A006594(n+1))-A004526(A292665(n+1))` -/
def P14916280536621792070.Spec : Prop :=
  ∀ n, P14916280536621792070.a n = A189518 (n + 1)

end A189518

/-!
# A189519: n+[nr/s]+[nt/s]; r=1, s=1/e, t=1/(e+1).

The programs for A189519, the canonical program `A189519.P16295478537119731584` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189519 has offset 1).

The definition of A189519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189519.P1030904324265348388

`A292646(n+1)+A022843(n+1)`
-/

namespace A189519.P1030904324265348388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292646 (n + 1) + A022843 (n + 1)

end

end A189519.P1030904324265348388

namespace A189519

/-- `A292646(n+1)+A022843(n+1)` -/
def P1030904324265348388.Spec : Prop :=
  ∀ n, P1030904324265348388.a n = A189519 (n + 1)

end A189519

/-! ## A189519.P4327449953756265892

`A292646(n+1)+∑[A276859(n+1)]`
-/

namespace A189519.P4327449953756265892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292646 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189519.P4327449953756265892

namespace A189519

/-- `A292646(n+1)+∑[A276859(n+1)]` -/
def P4327449953756265892.Spec : Prop :=
  ∀ n, P4327449953756265892.a n = A189519 (n + 1)

end A189519

/-! ## A189519.P16295478537119731584

`A000572(n+1)+∑[char[A006594(n+1)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189519

/-- `A000572(n+1)+∑[char[A006594(n+1)]]` -/
def P16295478537119731584.Spec : Prop :=
  ∀ n, P16295478537119731584.a n = A189519 (n + 1)

theorem P16295478537119731584.correct : P16295478537119731584.Spec := by
  intro n
  simp only [A189519, Nat.add_sub_cancel]

end A189519

/-! ## A189519.P9513983060094923632

`A000572(n+1)+A292646(n+1)-(n+1)`
-/

namespace A189519.P9513983060094923632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) + (A292646 (n + 1) - (n + 1 : ℤ))

end

end A189519.P9513983060094923632

namespace A189519

/-- `A000572(n+1)+A292646(n+1)-(n+1)` -/
def P9513983060094923632.Spec : Prop :=
  ∀ n, P9513983060094923632.a n = A189519 (n + 1)

end A189519

/-! ## A189519.P14956340200096466828

`A004526(A292665(n+1))+A000572(n+1)`
-/

namespace A189519.P14956340200096466828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A292665 (n + 1)).toNat + A000572 (n + 1)

end

end A189519.P14956340200096466828

namespace A189519

/-- `A004526(A292665(n+1))+A000572(n+1)` -/
def P14956340200096466828.Spec : Prop :=
  ∀ n, P14956340200096466828.a n = A189519 (n + 1)

end A189519

/-! ## A189519.P11103338570388964640

`A002265(2*A292665(n+1))+A000572(n+1)`
-/

namespace A189519.P11103338570388964640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A292665 (n + 1)).toNat + A000572 (n + 1)

end

end A189519.P11103338570388964640

namespace A189519

/-- `A002265(2*A292665(n+1))+A000572(n+1)` -/
def P11103338570388964640.Spec : Prop :=
  ∀ n, P11103338570388964640.a n = A189519 (n + 1)

end A189519

/-! ## A189519.P5124985782817480990

`A000210(n+1)+A292646(n+1)-A001478(n+1)`
-/

namespace A189519.P5124985782817480990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (n + 1) + (A292646 (n + 1) - A001478 (n + 1))

end

end A189519.P5124985782817480990

namespace A189519

/-- `A000210(n+1)+A292646(n+1)-A001478(n+1)` -/
def P5124985782817480990.Spec : Prop :=
  ∀ n, P5124985782817480990.a n = A189519 (n + 1)

end A189519

/-!
# A189520: n+[nr/t]+[ns/t]; r=1, s=1/e, t=1/(e+1).

The programs for A189520, the canonical program `A189520.P1730264741793748391` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189520 has offset 1).

The definition of A189520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189520.P1730264741793748391

`A189403(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189520

/-- `A189403(n+1)+2*(n+1)` -/
def P1730264741793748391.Spec : Prop :=
  ∀ n, P1730264741793748391.a n = A189520 (n + 1)

theorem P1730264741793748391.correct : P1730264741793748391.Spec := by
  intro n
  simp only [A189520, Nat.add_sub_cancel]

end A189520

/-! ## A189520.P15046119637668869367

`A292647(n+1)+A000572(n+1)`
-/

namespace A189520.P15046119637668869367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292647 (n + 1) + A000572 (n + 1)

end

end A189520.P15046119637668869367

namespace A189520

/-- `A292647(n+1)+A000572(n+1)` -/
def P15046119637668869367.Spec : Prop :=
  ∀ n, P15046119637668869367.a n = A189520 (n + 1)

end A189520

/-! ## A189520.P6262665509854999139

`A189403(n+1)+A005843(n)+2`
-/

namespace A189520.P6262665509854999139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + A005843 n + 2

end

end A189520.P6262665509854999139

namespace A189520

/-- `A189403(n+1)+A005843(n)+2` -/
def P6262665509854999139.Spec : Prop :=
  ∀ n, P6262665509854999139.a n = A189520 (n + 1)

end A189520

/-! ## A189520.P6535918632204524835

`A189518(n+1)+A189519(n+1)+1`
-/

namespace A189520.P6535918632204524835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189518 (n + 1) + (A189519 (n + 1) + 1)

end

end A189520.P6535918632204524835

namespace A189520

/-- `A189518(n+1)+A189519(n+1)+1` -/
def P6535918632204524835.Spec : Prop :=
  ∀ n, P6535918632204524835.a n = A189520 (n + 1)

end A189520

/-! ## A189520.P11093995495089753834

`A189403(n+1)+n+1-A001478(n+1)`
-/

namespace A189520.P11093995495089753834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (n + 1 : ℤ) - A001478 (n + 1)

end

end A189520.P11093995495089753834

namespace A189520

/-- `A189403(n+1)+n+1-A001478(n+1)` -/
def P11093995495089753834.Spec : Prop :=
  ∀ n, P11093995495089753834.a n = A189520 (n + 1)

end A189520

/-! ## A189520.P7107630296993112194

`A065475(A189403(n+1)+Δ[n²])`
-/

namespace A189520.P7107630296993112194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A189403 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A189520.P7107630296993112194

namespace A189520

/-- `A065475(A189403(n+1)+Δ[n²])` -/
def P7107630296993112194.Spec : Prop :=
  ∀ n, P7107630296993112194.a n = A189520 (n + 1)

end A189520

/-! ## A189520.P10467286346765602353

`A028310(A189403(n+1)+n+2+n)`
-/

namespace A189520.P10467286346765602353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A189403 (n + 1) + (n + 2 + n : ℤ)).toNat

end

end A189520.P10467286346765602353

namespace A189520

/-- `A028310(A189403(n+1)+n+2+n)` -/
def P10467286346765602353.Spec : Prop :=
  ∀ n, P10467286346765602353.a n = A189520 (n + 1)

end A189520

/-!
# A189521: n+[ns/r]+[nt/r]; r=1, s=1/(e-1), t=1/(e+1).

The programs for A189521, the canonical program `A189521.P17554504455868007450` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189521 has offset 1).

The definition of A189521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189521.P13758429244058814566

`A292664(n+1)-A292646(n+1)+n`
-/

namespace A189521.P13758429244058814566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) - A292646 (n + 1) + (n : ℤ)

end

end A189521.P13758429244058814566

namespace A189521

/-- `A292664(n+1)-A292646(n+1)+n` -/
def P13758429244058814566.Spec : Prop :=
  ∀ n, P13758429244058814566.a n = A189521 (n + 1)

end A189521

/-! ## A189521.P17554504455868007450

`A054385(n+1)+∑[char[A000572(n+1)]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189521

/-- `A054385(n+1)+∑[char[A000572(n+1)]]` -/
def P17554504455868007450.Spec : Prop :=
  ∀ n, P17554504455868007450.a n = A189521 (n + 1)

theorem P17554504455868007450.correct : P17554504455868007450.Spec := by
  intro n
  simp only [A189521, Nat.add_sub_cancel]

end A189521

/-! ## A189521.P12110311352822030397

`A054385(n+1)+A005408(n)-A292646(n+1)`
-/

namespace A189521.P12110311352822030397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + (A005408 n - A292646 (n + 1))

end

end A189521.P12110311352822030397

namespace A189521

/-- `A054385(n+1)+A005408(n)-A292646(n+1)` -/
def P12110311352822030397.Spec : Prop :=
  ∀ n, P12110311352822030397.a n = A189521 (n + 1)

end A189521

/-! ## A189521.P8360707336258908996

`A292664(n+1)-A008619(A292665(n+1))`
-/

namespace A189521.P8360707336258908996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) - A008619 (A292665 (n + 1)).toNat

end

end A189521.P8360707336258908996

namespace A189521

/-- `A292664(n+1)-A008619(A292665(n+1))` -/
def P8360707336258908996.Spec : Prop :=
  ∀ n, P8360707336258908996.a n = A189521 (n + 1)

end A189521

/-! ## A189521.P5016352591333652359

`A054385(n+1)-A004526(A292665(n+1))+n`
-/

namespace A189521.P5016352591333652359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) - A004526 (A292665 (n + 1)).toNat + (n : ℤ)

end

end A189521.P5016352591333652359

namespace A189521

/-- `A054385(n+1)-A004526(A292665(n+1))+n` -/
def P5016352591333652359.Spec : Prop :=
  ∀ n, P5016352591333652359.a n = A189521 (n + 1)

end A189521

/-! ## A189521.P9076992890889746598

`A292663(A054385(n+1))-A004526(A292665(n+1))`
-/

namespace A189521.P9076992890889746598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292663 (A054385 (n + 1)).toNat - A004526 (A292665 (n + 1)).toNat

end

end A189521.P9076992890889746598

namespace A189521

/-- `A292663(A054385(n+1))-A004526(A292665(n+1))` -/
def P9076992890889746598.Spec : Prop :=
  ∀ n, P9076992890889746598.a n = A189521 (n + 1)

end A189521

/-! ## A189521.P17823524541588000838

`A059995(A330094(n+1))+A054385(n+1)`
-/

namespace A189521.P17823524541588000838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A330094 (n + 1)).toNat + A054385 (n + 1)

end

end A189521.P17823524541588000838

namespace A189521

/-- `A059995(A330094(n+1))+A054385(n+1)` -/
def P17823524541588000838.Spec : Prop :=
  ∀ n, P17823524541588000838.a n = A189521 (n + 1)

end A189521

/-!
# A189522: n+[nr/s]+[nt/s]; r=1, s=1/(e-1), t=1/(e+1).

The programs for A189522, the canonical program `A189522.P15652800251320976758` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189522 has offset 1).

The definition of A189522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189522.P15652800251320976758

`A189403(n+1)+A292665(n+1)-A292647(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189522

/-- `A189403(n+1)+A292665(n+1)-A292647(n+1)` -/
def P15652800251320976758.Spec : Prop :=
  ∀ n, P15652800251320976758.a n = A189522 (n + 1)

theorem P15652800251320976758.correct : P15652800251320976758.Spec := by
  intro n
  simp only [A189522, Nat.add_sub_cancel]

end A189522

/-! ## A189522.P11567268547960005404

`A292665(n+1)+A000210(n+1)`
-/

namespace A189522.P11567268547960005404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292665 (n + 1) + A000210 (n + 1)

end

end A189522.P11567268547960005404

namespace A189522

/-- `A292665(n+1)+A000210(n+1)` -/
def P11567268547960005404.Spec : Prop :=
  ∀ n, P11567268547960005404.a n = A189522 (n + 1)

end A189522

/-! ## A189522.P1190555523601731749

`A004396(A330180(n+1))+A000210(n+1)`
-/

namespace A189522.P1190555523601731749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330180 (n + 1)).toNat + A000210 (n + 1)

end

end A189522.P1190555523601731749

namespace A189522

/-- `A004396(A330180(n+1))+A000210(n+1)` -/
def P1190555523601731749.Spec : Prop :=
  ∀ n, P1190555523601731749.a n = A189522 (n + 1)

end A189522

/-! ## A189522.P13303360501694634908

`A367066(A189388(n+1))`
-/

namespace A189522.P13303360501694634908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A189388 (n + 1)).toNat

end

end A189522.P13303360501694634908

namespace A189522

/-- `A367066(A189388(n+1))` -/
def P13303360501694634908.Spec : Prop :=
  ∀ n, P13303360501694634908.a n = A189522 (n + 1)

end A189522

/-!
# A189523: n+[nr/t]+[ns/t]; r=1, s=1/(e-1), t=1/(e+1).

The programs for A189523, the canonical program `A189523.P484942665720503072` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189523 has offset 1).

The definition of A189523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189523.P5190233814208406259

`A292666(n+1)+A000572(n+1)`
-/

namespace A189523.P5190233814208406259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292666 (n + 1) + A000572 (n + 1)

end

end A189523.P5190233814208406259

namespace A189523

/-- `A292666(n+1)+A000572(n+1)` -/
def P5190233814208406259.Spec : Prop :=
  ∀ n, P5190233814208406259.a n = A189523 (n + 1)

end A189523

/-! ## A189523.P484942665720503072

`A054385(2*(n+1))+A000572(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189523

/-- `A054385(2*(n+1))+A000572(n+1)` -/
def P484942665720503072.Spec : Prop :=
  ∀ n, P484942665720503072.a n = A189523 (n + 1)

theorem P484942665720503072.correct : P484942665720503072.Spec := by
  intro n
  simp only [A189523, Nat.add_sub_cancel]

end A189523

/-! ## A189523.P6431569471829416050

`A054385(2*(n+1))+A121384(n+1)+n`
-/

namespace A189523.P6431569471829416050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + (A121384 (n + 1) + (n : ℤ))

end

end A189523.P6431569471829416050

namespace A189523

/-- `A054385(2*(n+1))+A121384(n+1)+n` -/
def P6431569471829416050.Spec : Prop :=
  ∀ n, P6431569471829416050.a n = A189523 (n + 1)

end A189523

/-! ## A189523.P12747369299168336911

`A054385(2*(n+1))+A022843(n+1)+n+1`
-/

namespace A189523.P12747369299168336911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + A022843 (n + 1) + (n : ℤ) + 1

end

end A189523.P12747369299168336911

namespace A189523

/-- `A054385(2*(n+1))+A022843(n+1)+n+1` -/
def P12747369299168336911.Spec : Prop :=
  ∀ n, P12747369299168336911.a n = A189523 (n + 1)

end A189523

/-! ## A189523.P15925679117738942940

`A000572(n+1)+A054385(record[A133265(n)])`
-/

namespace A189523.P15925679117738942940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) + A054385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189523.P15925679117738942940

namespace A189523

/-- `A000572(n+1)+A054385(record[A133265(n)])` -/
def P15925679117738942940.Spec : Prop :=
  ∀ n, P15925679117738942940.a n = A189523 (n + 1)

end A189523

/-! ## A189523.P16336870844939258597

`A292664(Δ[A002378(n)])+A000210(n+1)`
-/

namespace A189523.P16336870844939258597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (f1 (n + 1) - f1 n).toNat + A000210 (n + 1)

end

end A189523.P16336870844939258597

namespace A189523

/-- `A292664(Δ[A002378(n)])+A000210(n+1)` -/
def P16336870844939258597.Spec : Prop :=
  ∀ n, P16336870844939258597.a n = A189523 (n + 1)

end A189523

/-!
# A189524: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=1+sqrt(2), t=1+sqrt(3).

The programs for A189524, the canonical program `A189524.P2311488307686594960` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189524 has offset 1).

The definition of A189524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189524.P2311488307686594960

`n+1+floor((n+1)*(sqrt(2)+1)/2)+floor((n+1)*(1+sqrt(3))/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189524

/-- `n+1+floor((n+1)*(sqrt(2)+1)/2)+floor((n+1)*(1+sqrt(3))/2)` -/
def P2311488307686594960.Spec : Prop :=
  ∀ n, P2311488307686594960.a n = A189524 (n + 1)

theorem P2311488307686594960.correct : P2311488307686594960.Spec := by
  intro n
  simp only [A189524, Nat.add_sub_cancel]

end A189524

/-! ## A189524.P6943957719285187626

`floor(A054406(n+1)+A003151(n+1)/2)`
-/

namespace A189524.P6943957719285187626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054406 (n + 1) : ℚ) + (A003151 (n + 1) : ℚ) / 2⌋

end

end A189524.P6943957719285187626

namespace A189524

/-- `floor(A054406(n+1)+A003151(n+1)/2)` -/
def P6943957719285187626.Spec : Prop :=
  ∀ n, P6943957719285187626.a n = A189524 (n + 1)

end A189524

/-! ## A189524.P16746350048059712650

`∑[A135500((n+1)²)+3]`
-/

namespace A189524.P16746350048059712650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135500 ((n + 1) ^ 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189524.P16746350048059712650

namespace A189524

/-- `∑[A135500((n+1)²)+3]` -/
def P16746350048059712650.Spec : Prop :=
  ∀ n, P16746350048059712650.a n = A189524 (n + 1)

end A189524

/-! ## A189524.P8969960371033333670

`A088462(A083398(A035338(2*n+1)))`
-/

namespace A189524.P8969960371033333670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A083398 (A035338 (2 * n + 1)).toNat).toNat

end

end A189524.P8969960371033333670

namespace A189524

/-- `A088462(A083398(A035338(2*n+1)))` -/
def P8969960371033333670.Spec : Prop :=
  ∀ n, P8969960371033333670.a n = A189524 (n + 1)

end A189524

/-! ## A189524.P18117929710347222053

`A242374(A116850(n+2))`
-/

namespace A189524.P18117929710347222053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242374 (A116850 (n + 2)).toNat

end

end A189524.P18117929710347222053

namespace A189524

/-- `A242374(A116850(n+2))` -/
def P18117929710347222053.Spec : Prop :=
  ∀ n, P18117929710347222053.a n = A189524 (n + 1)

end A189524

/-!
# A189525: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=1+sqrt(2), t=1+sqrt(3).

The programs for A189525, the canonical program `A189525.P17564399927168523093` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189525 has offset 1).

The definition of A189525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189525.P17564399927168523093

`n+1+floor(2*(n+1)/(sqrt(2)+1))+floor((n+1)*(1+sqrt(3))/(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189525

/-- `n+1+floor(2*(n+1)/(sqrt(2)+1))+floor((n+1)*(1+sqrt(3))/(1+sqrt(2)))` -/
def P17564399927168523093.Spec : Prop :=
  ∀ n, P17564399927168523093.a n = A189525 (n + 1)

theorem P17564399927168523093.correct : P17564399927168523093.Spec := by
  intro n
  simp only [A189525, Nat.add_sub_cancel]

end A189525

/-! ## A189525.P11727721728687454916

`A274399(A022842(n+1)%A086519(n))`
-/

namespace A189525.P11727721728687454916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (Int.tmod (A022842 (n + 1)) (A086519 n)).toNat

end

end A189525.P11727721728687454916

namespace A189525

/-- `A274399(A022842(n+1)%A086519(n))` -/
def P11727721728687454916.Spec : Prop :=
  ∀ n, P11727721728687454916.a n = A189525 (n + 1)

end A189525

/-! ## A189525.P7550065370300642364

`A274399(A001951(2*(n+1))%A086519(n))`
-/

namespace A189525.P7550065370300642364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (Int.tmod (A001951 (2 * (n + 1))) (A086519 n)).toNat

end

end A189525.P7550065370300642364

namespace A189525

/-- `A274399(A001951(2*(n+1))%A086519(n))` -/
def P7550065370300642364.Spec : Prop :=
  ∀ n, P7550065370300642364.a n = A189525 (n + 1)

end A189525

/-! ## A189525.P15981258415610860524

`A054977(A221640(2*(n+1)))*A274399(A022842(n+1))`
-/

namespace A189525.P15981258415610860524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A221640 (2 * (n + 1))).toNat * A274399 (A022842 (n + 1)).toNat

end

end A189525.P15981258415610860524

namespace A189525

/-- `A054977(A221640(2*(n+1)))*A274399(A022842(n+1))` -/
def P15981258415610860524.Spec : Prop :=
  ∀ n, P15981258415610860524.a n = A189525 (n + 1)

end A189525

/-! ## A189525.P1379751045238831880

`or(A000038((2*n)²), A274399(A022842(n+1)))`
-/

namespace A189525.P1379751045238831880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 ((2 * n) ^ 2)) (A274399 (A022842 (n + 1)).toNat)

end

end A189525.P1379751045238831880

namespace A189525

/-- `or(A000038((2*n)²), A274399(A022842(n+1)))` -/
def P1379751045238831880.Spec : Prop :=
  ∀ n, P1379751045238831880.a n = A189525 (n + 1)

end A189525

/-!
# A189526: a(n) = n + [n*r/t] + [n*s/t]; r=2, s=1+sqrt(2), t=1+sqrt(3).

The programs for A189526, the canonical program `A189526.P12505093006282921499` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189526 has offset 1).

The definition of A189526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189526.P12505093006282921499

`n+1+floor(2*(n+1)/(sqrt(3)+1))+floor((n+1)*(1+sqrt(2))/(1+sqrt(3)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189526

/-- `n+1+floor(2*(n+1)/(sqrt(3)+1))+floor((n+1)*(1+sqrt(2))/(1+sqrt(3)))` -/
def P12505093006282921499.Spec : Prop :=
  ∀ n, P12505093006282921499.a n = A189526 (n + 1)

theorem P12505093006282921499.correct : P12505093006282921499.Spec := by
  intro n
  simp only [A189526, Nat.add_sub_cancel]

end A189526

/-! ## A189526.P13157686857772101604

`∑[A131294(∑[A063776(n+1)])]`
-/

namespace A189526.P13157686857772101604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189526.P13157686857772101604

namespace A189526

/-- `∑[A131294(∑[A063776(n+1)])]` -/
def P13157686857772101604.Spec : Prop :=
  ∀ n, P13157686857772101604.a n = A189526 (n + 1)

end A189526

/-!
# A189527: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(3)-sqrt(2), t=sqrt(3)+sqrt(2).

The programs for A189527, the canonical program `A189527.P17015016707406824054` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189527 has offset 1).

The definition of A189527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189527.P17015016707406824054

`n+1+floor((n+1)*(sqrt(3)-sqrt(2)))+floor((n+1)*(sqrt(3)+sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189527

/-- `n+1+floor((n+1)*(sqrt(3)-sqrt(2)))+floor((n+1)*(sqrt(3)+sqrt(2)))` -/
def P17015016707406824054.Spec : Prop :=
  ∀ n, P17015016707406824054.a n = A189527 (n + 1)

theorem P17015016707406824054.correct : P17015016707406824054.Spec := by
  intro n
  simp only [A189527, Nat.add_sub_cancel]

end A189527

/-! ## A189527.P11717472154865586741

`A311450(A062399(n+1))`
-/

namespace A189527.P11717472154865586741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 (A062399 (n + 1)).toNat

end

end A189527.P11717472154865586741

namespace A189527

/-- `A311450(A062399(n+1))` -/
def P11717472154865586741.Spec : Prop :=
  ∀ n, P11717472154865586741.a n = A189527 (n + 1)

end A189527

/-! ## A189527.P14574937021115221389

`A311450(A120126(n+1))`
-/

namespace A189527.P14574937021115221389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 (A120126 (n + 1)).toNat

end

end A189527.P14574937021115221389

namespace A189527

/-- `A311450(A120126(n+1))` -/
def P14574937021115221389.Spec : Prop :=
  ∀ n, P14574937021115221389.a n = A189527 (n + 1)

end A189527

/-! ## A189527.P1762038891968915059

`A311450(A351870(n+1))`
-/

namespace A189527.P1762038891968915059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 (A351870 (n + 1)).toNat

end

end A189527.P1762038891968915059

namespace A189527

/-- `A311450(A351870(n+1))` -/
def P1762038891968915059.Spec : Prop :=
  ∀ n, P1762038891968915059.a n = A189527 (n + 1)

end A189527

/-! ## A189527.P3024611953793365894

`A311450(A032555(n+1))`
-/

namespace A189527.P3024611953793365894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 (A032555 (n + 1)).toNat

end

end A189527.P3024611953793365894

namespace A189527

/-- `A311450(A032555(n+1))` -/
def P3024611953793365894.Spec : Prop :=
  ∀ n, P3024611953793365894.a n = A189527 (n + 1)

end A189527

/-!
# A189528: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(3)-sqrt(2), t=sqrt(3)+sqrt(2).

The programs for A189528, the canonical program `A189528.P16982097706445687133` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189528 has offset 1).

The definition of A189528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189528.P16982097706445687133

`n+1+floor((n+1)/(sqrt(3)-sqrt(2)))+floor((n+1)*(sqrt(3)+sqrt(2))/(sqrt(3)-sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189528

/-- `n+1+floor((n+1)/(sqrt(3)-sqrt(2)))+floor((n+1)*(sqrt(3)+sqrt(2))/(sqrt(3)-sqrt(2)))` -/
def P16982097706445687133.Spec : Prop :=
  ∀ n, P16982097706445687133.a n = A189528 (n + 1)

theorem P16982097706445687133.correct : P16982097706445687133.Spec := by
  intro n
  simp only [A189528, Nat.add_sub_cancel]

end A189528

/-! ## A189528.P5461834668327394566

`A105356(7*(n+1))`
-/

namespace A189528.P5461834668327394566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (7 * (n + 1))

end

end A189528.P5461834668327394566

namespace A189528

/-- `A105356(7*(n+1))` -/
def P5461834668327394566.Spec : Prop :=
  ∀ n, P5461834668327394566.a n = A189528 (n + 1)

end A189528

/-!
# A189529: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(3)-sqrt(2), t=sqrt(3)+sqrt(2).

The programs for A189529, the canonical program `A189529.P7186151189071976063` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189529 has offset 1).

The definition of A189529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189529.P7186151189071976063

`n+1+floor((n+1)/(sqrt(3)+sqrt(2)))+floor((n+1)*(sqrt(3)-sqrt(2))/(sqrt(3)+sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189529

/-- `n+1+floor((n+1)/(sqrt(3)+sqrt(2)))+floor((n+1)*(sqrt(3)-sqrt(2))/(sqrt(3)+sqrt(2)))` -/
def P7186151189071976063.Spec : Prop :=
  ∀ n, P7186151189071976063.a n = A189529 (n + 1)

theorem P7186151189071976063.correct : P7186151189071976063.Spec := by
  intro n
  simp only [A189529, Nat.add_sub_cancel]

end A189529

/-! ## A189529.P16554657106519916271

`lt[A059553(n+1), A088123(A088134(2*n+1))]`
-/

namespace A189529.P16554657106519916271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088123 (A088134 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189529.P16554657106519916271

namespace A189529

/-- `lt[A059553(n+1), A088123(A088134(2*n+1))]` -/
def P16554657106519916271.Spec : Prop :=
  ∀ n, (P16554657106519916271.a n : ℤ) = A189529 (n + 1)

end A189529

/-! ## A189529.P6865787674848637315

`lt[A088147(n+1), A088123(A088134(2*n+1))]`
-/

namespace A189529.P6865787674848637315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088123 (A088134 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189529.P6865787674848637315

namespace A189529

/-- `lt[A088147(n+1), A088123(A088134(2*n+1))]` -/
def P6865787674848637315.Spec : Prop :=
  ∀ n, (P6865787674848637315.a n : ℤ) = A189529 (n + 1)

end A189529

/-! ## A189529.P7512274240338560440

`lt[A120514(n+1), A088123(A088134(2*n+1))]`
-/

namespace A189529.P7512274240338560440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088123 (A088134 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189529.P7512274240338560440

namespace A189529

/-- `lt[A120514(n+1), A088123(A088134(2*n+1))]` -/
def P7512274240338560440.Spec : Prop :=
  ∀ n, (P7512274240338560440.a n : ℤ) = A189529 (n + 1)

end A189529

/-!
# A189530: n+[ns/r]+[nt/r]; r=1, s=2^(1/3), t=2^(2/3).

The programs for A189530, the canonical program `A189530.P1009789247220490105` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189530 has offset 1).

The definition of A189530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189530.P10604674720230634952

`∑[A081117(n)]+floor((root(4, 3)+1)*(n+1))`
-/

namespace A189530.P10604674720230634952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊((4 : ℝ) ^ (1 / (3 : ℝ)) + 1) * (n + 1 : ℝ)⌋

end

end A189530.P10604674720230634952

namespace A189530

/-- `∑[A081117(n)]+floor((root(4, 3)+1)*(n+1))` -/
def P10604674720230634952.Spec : Prop :=
  ∀ n, P10604674720230634952.a n = A189530 (n + 1)

end A189530

/-! ## A189530.P1966282101118766093

`A038129(n+1)+floor((root(4, 3)+1)*(n+1))`
-/

namespace A189530.P1966282101118766093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038129 (n + 1) + ⌊((4 : ℝ) ^ (1 / (3 : ℝ)) + 1) * (n + 1 : ℝ)⌋

end

end A189530.P1966282101118766093

namespace A189530

/-- `A038129(n+1)+floor((root(4, 3)+1)*(n+1))` -/
def P1966282101118766093.Spec : Prop :=
  ∀ n, P1966282101118766093.a n = A189530 (n + 1)

end A189530

/-! ## A189530.P1009789247220490105

`A182773(n+1)+∑[A081117(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189530

/-- `A182773(n+1)+∑[A081117(n)]` -/
def P1009789247220490105.Spec : Prop :=
  ∀ n, P1009789247220490105.a n = A189530 (n + 1)

theorem P1009789247220490105.correct : P1009789247220490105.Spec := by
  intro n
  simp only [A189530, Nat.add_sub_cancel]

end A189530

/-! ## A189530.P9663558829510314011

`A182773(n+1)+A038129(n+1)`
-/

namespace A189530.P9663558829510314011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182773 (n + 1) + A038129 (n + 1)

end

end A189530.P9663558829510314011

namespace A189530

/-- `A182773(n+1)+A038129(n+1)` -/
def P9663558829510314011.Spec : Prop :=
  ∀ n, P9663558829510314011.a n = A189530 (n + 1)

end A189530

/-! ## A189530.P13111878093725426929

`n+1+A347792(n+1)+A038129(n+1)`
-/

namespace A189530.P13111878093725426929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A347792 (n + 1) + A038129 (n + 1))

end

end A189530.P13111878093725426929

namespace A189530

/-- `n+1+A347792(n+1)+A038129(n+1)` -/
def P13111878093725426929.Spec : Prop :=
  ∀ n, P13111878093725426929.a n = A189530 (n + 1)

end A189530

/-! ## A189530.P475962818518920151

`A189532(2*(n+1))-(n+1)`
-/

namespace A189530.P475962818518920151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189532 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A189530.P475962818518920151

namespace A189530

/-- `A189532(2*(n+1))-(n+1)` -/
def P475962818518920151.Spec : Prop :=
  ∀ n, P475962818518920151.a n = A189530 (n + 1)

end A189530

/-! ## A189530.P14086262417488054990

`A347792(A189532(2*(n+1)))/2`
-/

namespace A189530.P14086262417488054990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347792 (A189532 (2 * (n + 1))).toNat : ℚ) / 2

end

end A189530.P14086262417488054990

namespace A189530

/-- `A347792(A189532(2*(n+1)))/2` -/
def P14086262417488054990.Spec : Prop :=
  ∀ n, P14086262417488054990.a n = (A189530 (n + 1) : ℚ)

end A189530

/-!
# A189531: n+[nr/s]+[nt/s]; r=1, s=2^(1/3), t=2^(2/3).

The programs for A189531, there is no canonical definition to state claims against.
-/

/-! ## A189531.P10210052814505832913

`A000194(A189530(n+1)*A189532(n+1))`
-/

namespace A189531.P10210052814505832913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A189530 (n + 1) * A189532 (n + 1)).toNat

end

end A189531.P10210052814505832913

/-! ## A189531.P5646426067011475771

`A000194((A189532(2*(n+1))-(n+1))*A189532(n+1))`
-/

namespace A189531.P5646426067011475771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A189532 (2 * (n + 1)) - (n + 1 : ℤ)) * A189532 (n + 1)).toNat

end

end A189531.P5646426067011475771

/-! ## A189531.P13458163406347532475

`A000194((A182773(n+1)+A038129(n+1))*A189532(n+1))`
-/

namespace A189531.P13458163406347532475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A182773 (n + 1) + A038129 (n + 1)) * A189532 (n + 1)).toNat

end

end A189531.P13458163406347532475

/-! ## A189531.P13354534913477123235

`A000194((n+1+A347792(n+1)+A038129(n+1))*A189532(n+1))`
-/

namespace A189531.P13354534913477123235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (((n + 1 : ℤ) + (A347792 (n + 1) + A038129 (n + 1))) * A189532 (n + 1)).toNat

end

end A189531.P13354534913477123235

/-! ## A189531.P10673263339237449090

`lt[A011646(n+2), -A011644(n+4)]`
-/

namespace A189531.P10673263339237449090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011644 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189531.P10673263339237449090

/-!
# A189532: n+[nr/t]+[ns/t]; r=1, s=2^(1/3), t=2^(2/3).

The programs for A189532, the canonical program `A189532.P5408323124899786761` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189532 has offset 1).

The definition of A189532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189532.P342606476948152638

`A004526(A347792(n+1))+ceil((n+1)/root(4, 3)+n)`
-/

namespace A189532.P342606476948152638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A347792 (n + 1)).toNat + ⌈(n + 1 : ℝ) / (4 : ℝ) ^ (1 / (3 : ℝ)) + (n : ℝ)⌉

end

end A189532.P342606476948152638

namespace A189532

/-- `A004526(A347792(n+1))+ceil((n+1)/root(4, 3)+n)` -/
def P342606476948152638.Spec : Prop :=
  ∀ n, P342606476948152638.a n = A189532 (n + 1)

end A189532

/-! ## A189532.P5408323124899786761

`A182774(n+1)+A004526(A347792(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189532

/-- `A182774(n+1)+A004526(A347792(n+1))` -/
def P5408323124899786761.Spec : Prop :=
  ∀ n, P5408323124899786761.a n = A189532 (n + 1)

theorem P5408323124899786761.correct : P5408323124899786761.Spec := by
  intro n
  simp only [A189532, Nat.add_sub_cancel]

end A189532

/-! ## A189532.P16706563212815400230

`A065033(A038129(n+1)+2*n+1)+A004526(A347792(n+1))`
-/

namespace A189532.P16706563212815400230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A038129 (n + 1) + (2 * n + 1 : ℤ)).toNat + A004526 (A347792 (n + 1)).toNat

end

end A189532.P16706563212815400230

namespace A189532

/-- `A065033(A038129(n+1)+2*n+1)+A004526(A347792(n+1))` -/
def P16706563212815400230.Spec : Prop :=
  ∀ n, P16706563212815400230.a n = A189532 (n + 1)

end A189532

/-! ## A189532.P6012536126570180044

`or(A010059(A177250(n)), A060106(n+1))`
-/

namespace A189532.P6012536126570180044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (A177250 n).toNat) (A060106 (n + 1))

end

end A189532.P6012536126570180044

namespace A189532

/-- `or(A010059(A177250(n)), A060106(n+1))` -/
def P6012536126570180044.Spec : Prop :=
  ∀ n, P6012536126570180044.a n = A189532 (n + 1)

end A189532

/-! ## A189532.P695309107340681693

`A373550(A332243(n))+A172266(3*n+1)`
-/

namespace A189532.P695309107340681693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373550 (A332243 n).toNat + A172266 (3 * n + 1)

end

end A189532.P695309107340681693

namespace A189532

/-- `A373550(A332243(n))+A172266(3*n+1)` -/
def P695309107340681693.Spec : Prop :=
  ∀ n, P695309107340681693.a n = A189532 (n + 1)

end A189532

/-!
# A189533: n+[ns/r]+[nt/r]; r=1, s=arcsin(3/5), t=arcsin(4/5).

The programs for A189533, there is no canonical definition to state claims against.
-/

/-! ## A189533.P10244280223703904856

`A330215(n+1)+A101688(A147187(n+1))`
-/

namespace A189533.P10244280223703904856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330215 (n + 1) + A101688 (A147187 (n + 1)).toNat

end

end A189533.P10244280223703904856

/-! ## A189533.P11939940648428230264

`A095117(2*n)+A000035(A011782(n))`
-/

namespace A189533.P11939940648428230264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (2 * n) + A000035 (A011782 n).toNat

end

end A189533.P11939940648428230264

/-! ## A189533.P2743596979082907196

`A042965(2*n+1)+A010052(A014382(n))`
-/

namespace A189533.P2743596979082907196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (2 * n + 1) + A010052 (A014382 n).toNat

end

end A189533.P2743596979082907196

/-!
# A189534: n+[nr/s]+[nt/s]; r=1, s=arcsin(3/5), t=arcsin(4/5).

The programs for A189534, the canonical program `A189534.P5400757265988672076` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189534 has offset 1).

The definition of A189534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189534.P5400757265988672076

`n+1+floor((n+1)/asin(3/5))+floor((n+1)*asin(4/5)/asin(3/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189534

/-- `n+1+floor((n+1)/asin(3/5))+floor((n+1)*asin(4/5)/asin(3/5))` -/
def P5400757265988672076.Spec : Prop :=
  ∀ n, P5400757265988672076.a n = A189534 (n + 1)

theorem P5400757265988672076.correct : P5400757265988672076.Spec := by
  intro n
  simp only [A189534, Nat.add_sub_cancel]

end A189534

/-! ## A189534.P8011310844661578682

`record[xor(3, n)]-A079979(A063258(n))`
-/

namespace A189534.P8011310844661578682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A079979 (A063258 n).toNat

end

end A189534.P8011310844661578682

namespace A189534

/-- `record[xor(3, n)]-A079979(A063258(n))` -/
def P8011310844661578682.Spec : Prop :=
  ∀ n, P8011310844661578682.a n = A189534 (n + 1)

end A189534

/-! ## A189534.P5929137108706773693

`record[xor(3, n)]-A276794(A178649(n+1))`
-/

namespace A189534.P5929137108706773693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A276794 (A178649 (n + 1)).toNat

end

end A189534.P5929137108706773693

namespace A189534

/-- `record[xor(3, n)]-A276794(A178649(n+1))` -/
def P5929137108706773693.Spec : Prop :=
  ∀ n, P5929137108706773693.a n = A189534 (n + 1)

end A189534

/-! ## A189534.P4814740309025553308

`A004767(n)-A276794(A178649(n+1))`
-/

namespace A189534.P4814740309025553308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A276794 (A178649 (n + 1)).toNat

end

end A189534.P4814740309025553308

namespace A189534

/-- `A004767(n)-A276794(A178649(n+1))` -/
def P4814740309025553308.Spec : Prop :=
  ∀ n, P4814740309025553308.a n = A189534 (n + 1)

end A189534

/-! ## A189534.P15678249104285218753

`or(A016825(n), A164359(A183104(n+1)))`
-/

namespace A189534.P15678249104285218753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016825 n) (A164359 (A183104 (n + 1)).toNat)

end

end A189534.P15678249104285218753

namespace A189534

/-- `or(A016825(n), A164359(A183104(n+1)))` -/
def P15678249104285218753.Spec : Prop :=
  ∀ n, P15678249104285218753.a n = A189534 (n + 1)

end A189534

/-!
# A189535: n+[nr/t]+[ns/t]; r=1, s=arcsin(3/5), t=arcsin(4/5).

The programs for A189535, there is no canonical definition to state claims against.
-/

/-! ## A189535.P16022606165537933185

`A265133(n+1)+A118759(A064676(n+1))`
-/

namespace A189535.P16022606165537933185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265133 (n + 1) + A118759 (A064676 (n + 1)).toNat

end

end A189535.P16022606165537933185

/-! ## A189535.P14564124476464618898

`A004773(A064676(n+1)%A051967(n+1))`
-/

namespace A189535.P14564124476464618898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (Int.tmod (A064676 (n + 1)) (A051967 (n + 1))).toNat

end

end A189535.P14564124476464618898

/-! ## A189535.P15241067186225051893

`A265133(n+1)+A000196(A022331(n)+A000290(2*(n+1)))`
-/

namespace A189535.P15241067186225051893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265133 (n + 1) + A000196 (A022331 n + A000290 (2 * (n + 1))).toNat

end

end A189535.P15241067186225051893

/-! ## A189535.P16862164705263299076

`A151933(A163990(n+1))+A004773(A064676(n+1))`
-/

namespace A189535.P16862164705263299076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A163990 (n + 1)).toNat + A004773 (A064676 (n + 1)).toNat

end

end A189535.P16862164705263299076

/-! ## A189535.P18186091863250160500

`A265133(n+1)+A082069(A130791(n+1))*A265133(3*n+3)`
-/

namespace A189535.P18186091863250160500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265133 (n + 1) + A082069 (A130791 (n + 1)).toNat * A265133 (3 * n + 3)

end

end A189535.P18186091863250160500

/-!
# A189536: The smallest prime p such that tau(p-1) + tau(p+1) = prime(n), or 0 if no such prime exists; where tau(k) is the number of divisors of k.

The programs for A189536, there is no canonical definition to state claims against.
-/

/-! ## A189536.P6412939622585744646

`A090482(p?[comp[n²]])`
-/

namespace A189536.P6412939622585744646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A189536.P6412939622585744646

/-! ## A189536.P10418635227680033608

`A090482(record[p?[∏{p}[n+1, #]]])`
-/

namespace A189536.P10418635227680033608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A189536.P10418635227680033608

/-! ## A189536.P12484741823944865684

`A090482(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A189536.P12484741823944865684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A189536.P12484741823944865684

/-! ## A189536.P9930993404549415360

`A090482(p?[xor(1, n)+1]%(2^(n+5)-17))`
-/

namespace A189536.P9930993404549415360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) ((2 ^ (n + 5) : ℤ) - 17)).toNat

end

end A189536.P9930993404549415360

/-! ## A189536.P4326528231534186394

`A090482(A138980(n))`
-/

namespace A189536.P4326528231534186394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (A138980 n).toNat

end

end A189536.P4326528231534186394

/-!
# A189537: Number of arrangements of n+1 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189537, there is no canonical definition to state claims against.
-/

/-! ## A189537.P14418437374818368397

`A189545((n+1)²+n²)`
-/

namespace A189537.P14418437374818368397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 ((n + 1) ^ 2 + n ^ 2)

end

end A189537.P14418437374818368397

/-! ## A189537.P11085097399335469024

`lcm(2, A189545(A001844(n)))`
-/

namespace A189537.P11085097399335469024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189545 (A001844 n).toNat)

end

end A189537.P11085097399335469024

/-! ## A189537.P3520948299974985671

`record[A003982(n)*A189545(n+1)]`
-/

namespace A189537.P3520948299974985671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189537.P3520948299974985671

/-! ## A189537.P11822236173297638378

`record[char[A046092(n)]*A189545(n+1)]`
-/

namespace A189537.P11822236173297638378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A189545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189537.P11822236173297638378

/-! ## A189537.P16326060293416320623

`A007318(ceil(n/(n+1)))*A189545(A001844(n))`
-/

namespace A189537.P16326060293416320623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A189545 (A001844 n).toNat

end

end A189537.P16326060293416320623

/-!
# A189538: Number of arrangements of n+1 nonzero numbers x(i) in -2..2 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189538, there is no canonical definition to state claims against.
-/

/-! ## A189538.P17894045444078587581

`A189545(∑[n+2])`
-/

namespace A189538.P17894045444078587581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189538.P17894045444078587581

/-! ## A189538.P17118105633481611737

`record[A189545(lt[A211849(n+2), n])]`
-/

namespace A189538.P17118105633481611737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189538.P17118105633481611737

/-! ## A189538.P16717640032855990374

`record[A189545(A000096(A154958(n)))]`
-/

namespace A189538.P16717640032855990374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189538.P16717640032855990374

/-! ## A189538.P15604818534198271267

`record[A189545(A000096(A193739(n)))]`
-/

namespace A189538.P15604818534198271267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000096 (A193739 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189538.P15604818534198271267

/-! ## A189538.P12453458864518894242

`record[A189545(A000096(A344180(n)))]`
-/

namespace A189538.P12453458864518894242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189538.P12453458864518894242

/-!
# A189539: Number of arrangements of n+1 nonzero numbers x(i) in -3..3 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189539, there is no canonical definition to state claims against.
-/

/-! ## A189539.P3081109750730962198

`A189545(∑[n+3]+1)`
-/

namespace A189539.P3081109750730962198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189539.P3081109750730962198

/-! ## A189539.P5350609608959952910

`record[A189545(A130297(n+2))]`
-/

namespace A189539.P5350609608959952910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A130297 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189539.P5350609608959952910

/-! ## A189539.P4115000932216476144

`record[A189545(lt[A211849(n+4), n]+1)]`
-/

namespace A189539.P4115000932216476144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189539.P4115000932216476144

/-!
# A189540: Number of arrangements of n+1 nonzero numbers x(i) in -4..4 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189540, there is no canonical definition to state claims against.
-/

/-! ## A189540.P13958402274303179272

`A189545(∑[n+4]+3)`
-/

namespace A189540.P13958402274303179272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A189540.P13958402274303179272

/-! ## A189540.P11868834787871530871

`lcm(2, A189545(A055998(n+2)))`
-/

namespace A189540.P11868834787871530871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189545 (A055998 (n + 2)).toNat)

end

end A189540.P11868834787871530871

/-! ## A189540.P10620671890239098953

`and(cos(-π), A189545(A155212(n)+5))`
-/

namespace A189540.P10620671890239098953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.cos (-Real.pi))) (A189545 (A155212 n + 5).toNat)

end

end A189540.P10620671890239098953

/-! ## A189540.P15930949975767148616

`A189545(A055998(n+2))%A189541(n+1)`
-/

namespace A189540.P15930949975767148616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189545 (A055998 (n + 2)).toNat) (A189541 (n + 1))

end

end A189540.P15930949975767148616

/-! ## A189540.P13522026740557937072

`A189545(A155212(n)+5)*A255327(2*n+1)`
-/

namespace A189540.P13522026740557937072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A155212 n + 5).toNat * A255327 (2 * n + 1)

end

end A189540.P13522026740557937072

/-!
# A189541: Number of arrangements of n+1 nonzero numbers x(i) in -5..5 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189541, there is no canonical definition to state claims against.
-/

/-! ## A189541.P1108204320900740897

`A189545(∑[n+3]+2*(n+4))`
-/

namespace A189541.P1108204320900740897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * (n + 4))

end

end A189541.P1108204320900740897

/-! ## A189541.P14537288796448403221

`lcm(2, A189545(A046691(n+3)))`
-/

namespace A189541.P14537288796448403221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189545 (A046691 (n + 3)).toNat)

end

end A189541.P14537288796448403221

/-! ## A189541.P9625170495819912587

`and(-2, A189545(Δ[A023545(n+1)]))`
-/

namespace A189541.P9625170495819912587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A189545 (f1 (n + 1) - f1 n).toNat)

end

end A189541.P9625170495819912587

/-! ## A189541.P14585582899095117798

`A189545(Δ[A023545(n+1)])%A236272(n+1)`
-/

namespace A189541.P14585582899095117798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189545 (f1 (n + 1) - f1 n).toNat) (A236272 (n + 1))

end

end A189541.P14585582899095117798

/-! ## A189541.P108977012843516839

`A189545(A046691(n+3))+A000038(A331252(n+1))`
-/

namespace A189541.P108977012843516839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A046691 (n + 3)).toNat + A000038 (A331252 (n + 1)).toNat

end

end A189541.P108977012843516839

/-!
# A189542: Number of arrangements of n+1 nonzero numbers x(i) in -6..6 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189542, there is no canonical definition to state claims against.
-/

/-! ## A189542.P16678981009829779953

`A189545(A052905(n+3))`
-/

namespace A189542.P16678981009829779953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A052905 (n + 3)).toNat

end

end A189542.P16678981009829779953

/-! ## A189542.P5354848043855280665

`A189545(eq[3, A219347(n)])`
-/

namespace A189542.P5354848043855280665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189542.P5354848043855280665

/-! ## A189542.P14998320408182902930

`A189545(eq[5, A193592(n)])`
-/

namespace A189542.P14998320408182902930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189542.P14998320408182902930

/-! ## A189542.P5771946807002475387

`A189545(eq[8, A258709(n)])`
-/

namespace A189542.P5771946807002475387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189542.P5771946807002475387

/-! ## A189542.P6910071116280096621

`A189545(eq[16, A166065(n)])`
-/

namespace A189542.P6910071116280096621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189542.P6910071116280096621

/-!
# A189543: Number of arrangements of n+1 nonzero numbers x(i) in -7..7 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189543, there is no canonical definition to state claims against.
-/

/-! ## A189543.P12931306244509566012

`A189545(A055999(n+4))`
-/

namespace A189543.P12931306244509566012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A055999 (n + 4)).toNat

end

end A189543.P12931306244509566012

/-! ## A189543.P16357183545889946870

`A189545(eq[4, A219347(n)])`
-/

namespace A189543.P16357183545889946870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189543.P16357183545889946870

/-! ## A189543.P858905149358851203

`A189545(eq[6, A193592(n)])`
-/

namespace A189543.P858905149358851203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189543.P858905149358851203

/-! ## A189543.P16186555447550242593

`A189545(eq[10, A185782(n+1)])`
-/

namespace A189543.P16186555447550242593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189543.P16186555447550242593

/-! ## A189543.P16184287443230412717

`A189545(eq[32, A057728(n+1)])`
-/

namespace A189543.P16184287443230412717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189543.P16184287443230412717

/-!
# A189544: Number of arrangements of n+1 nonzero numbers x(i) in -8..8 with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189544, there is no canonical definition to state claims against.
-/

/-! ## A189544.P15928179013223492207

`A189545(eq[5, A219347(n)])`
-/

namespace A189544.P15928179013223492207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189544.P15928179013223492207

/-! ## A189544.P5089594217968097665

`A189545(eq[7, A193592(n)])`
-/

namespace A189544.P5089594217968097665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189544.P5089594217968097665

/-! ## A189544.P17796339686525134221

`A189545(A155212(n+4)+1)`
-/

namespace A189544.P17796339686525134221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A155212 (n + 4) + 1).toNat

end

end A189544.P17796339686525134221

/-! ## A189544.P2301483044732601306

`A189545(A000217(n+8)-7)`
-/

namespace A189544.P2301483044732601306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000217 (n + 8) - 7).toNat

end

end A189544.P2301483044732601306

/-! ## A189544.P6373354679465431516

`A189545(A166136(n+5)+2*(n+1))`
-/

namespace A189544.P6373354679465431516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A166136 (n + 5) + (2 * (n + 1) : ℤ)).toNat

end

end A189544.P6373354679465431516

/-!
# A189546: Number of arrangements of 3 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189546, there is no canonical definition to state claims against.
-/

/-! ## A189546.P5776268713009880279

`A189545(∑[n+1]+2)`
-/

namespace A189546.P5776268713009880279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A189546.P5776268713009880279

/-! ## A189546.P3551218430308967757

`record[A189545(gcd(n+2, A002262(n)))]`
-/

namespace A189546.P3551218430308967757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (Int.gcd (n + 2 : ℤ) (A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189546.P3551218430308967757

/-! ## A189546.P11532217082794208263

`A189545(A152948(n+3))%A000351(n+3)`
-/

namespace A189546.P11532217082794208263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189545 (A152948 (n + 3)).toNat) (A000351 (n + 3))

end

end A189546.P11532217082794208263

/-! ## A189546.P14853062146356464800

`record[A189545(n+3)-A263303(n+1)]`
-/

namespace A189546.P14853062146356464800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (n + 3) - A263303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189546.P14853062146356464800

/-!
# A189547: Number of arrangements of 4 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189547, there is no canonical definition to state claims against.
-/

/-! ## A189547.P13601592747430647624

`A189545(∑[n+2]+4)`
-/

namespace A189547.P13601592747430647624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189547.P13601592747430647624

/-! ## A189547.P4794955631759038815

`lcm(2, A189545(A167614(n+1)))`
-/

namespace A189547.P4794955631759038815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189545 (A167614 (n + 1)).toNat)

end

end A189547.P4794955631759038815

/-! ## A189547.P17856138997552204208

`A189545(A167614(n+1))+A025444(n)`
-/

namespace A189547.P17856138997552204208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167614 (n + 1)).toNat + A025444 n

end

end A189547.P17856138997552204208

/-! ## A189547.P14850479927840981583

`A057427(n)*A189545(A167614(n+1))`
-/

namespace A189547.P14850479927840981583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A189545 (A167614 (n + 1)).toNat

end

end A189547.P14850479927840981583

/-! ## A189547.P1028154569419837537

`A189545(A167614(n+1))*A304042(n)`
-/

namespace A189547.P1028154569419837537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167614 (n + 1)).toNat * A304042 n

end

end A189547.P1028154569419837537

/-!
# A189548: Number of arrangements of 5 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189548, there is no canonical definition to state claims against.
-/

/-! ## A189548.P18221640273692990363

`A189545(A052905(n)+9)`
-/

namespace A189548.P18221640273692990363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A052905 n + 9).toNat

end

end A189548.P18221640273692990363

/-! ## A189548.P12358899370511146127

`A189545(A055999(n)+10)`
-/

namespace A189548.P12358899370511146127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A055999 n + 10).toNat

end

end A189548.P12358899370511146127

/-! ## A189548.P11056425376488767482

`A189545(Δ[A005586(n)]+5)`
-/

namespace A189548.P11056425376488767482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (f1 (n + 1) - f1 n + 5).toNat

end

end A189548.P11056425376488767482

/-! ## A189548.P5960133595279965485

`A189545(A167614(n+2)+1)`
-/

namespace A189548.P5960133595279965485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167614 (n + 2) + 1).toNat

end

end A189548.P5960133595279965485

/-! ## A189548.P7206426564761648614

`A189545(A167499(n+2)-1)`
-/

namespace A189548.P7206426564761648614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167499 (n + 2) - 1).toNat

end

end A189548.P7206426564761648614

/-!
# A189549: Number of arrangements of 6 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189549, there is no canonical definition to state claims against.
-/

/-! ## A189549.P5863653287562794481

`A189545(A155212(n)+13)`
-/

namespace A189549.P5863653287562794481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A155212 n + 13).toNat

end

end A189549.P5863653287562794481

/-! ## A189549.P1491691553960569158

`A189545(A056000(n)+15)`
-/

namespace A189549.P1491691553960569158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A056000 n + 15).toNat

end

end A189549.P1491691553960569158

/-! ## A189549.P17637924174907577217

`A189545(A000217(n+4)+5)`
-/

namespace A189549.P17637924174907577217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000217 (n + 4) + 5).toNat

end

end A189549.P17637924174907577217

/-! ## A189549.P15867454243885845677

`A189545(A052905(n+3)-(2*n+1))`
-/

namespace A189549.P15867454243885845677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A189549.P15867454243885845677

/-! ## A189549.P16921072566237406544

`A189545(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A189549.P16921072566237406544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A189549.P16921072566237406544

/-!
# A189550: Number of arrangements of 7 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189550, there is no canonical definition to state claims against.
-/

/-! ## A189550.P14568547665481934938

`A189545(A166136(n+4))`
-/

namespace A189550.P14568547665481934938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A166136 (n + 4)).toNat

end

end A189550.P14568547665481934938

/-! ## A189550.P15277824772415016231

`A189545(A167499(n+4)+1)`
-/

namespace A189550.P15277824772415016231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167499 (n + 4) + 1).toNat

end

end A189550.P15277824772415016231

/-! ## A189550.P1326350825382797919

`A189545(A133263(n+5)+4)`
-/

namespace A189550.P1326350825382797919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A133263 (n + 5) + 4).toNat

end

end A189550.P1326350825382797919

/-! ## A189550.P4655831468301562091

`A189545(A000124(n+7)-2*(n+4))`
-/

namespace A189550.P4655831468301562091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000124 (n + 7) - (2 * (n + 4) : ℤ)).toNat

end

end A189550.P4655831468301562091

/-! ## A189550.P3745958200920454861

`A189545(A167487(n+11)-A016993(n+9))`
-/

namespace A189550.P3745958200920454861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167487 (n + 11) - A016993 (n + 9)).toNat

end

end A189550.P3745958200920454861

/-!
# A189551: Number of arrangements of 8 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189551, there is no canonical definition to state claims against.
-/

/-! ## A189551.P10913523549785666924

`A189545(A167487(n+5))`
-/

namespace A189551.P10913523549785666924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167487 (n + 5)).toNat

end

end A189551.P10913523549785666924

/-! ## A189551.P17267267270506425691

`A189545(eq[11, A066657(n)])`
-/

namespace A189551.P17267267270506425691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189551.P17267267270506425691

/-! ## A189551.P10048102600294852317

`A189545(A166136(n+5)+1)`
-/

namespace A189551.P10048102600294852317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A166136 (n + 5) + 1).toNat

end

end A189551.P10048102600294852317

/-! ## A189551.P1311723440825662686

`A189545(A167614(n+5)+4)`
-/

namespace A189551.P1311723440825662686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A167614 (n + 5) + 4).toNat

end

end A189551.P1311723440825662686

/-! ## A189551.P17310444768582259313

`A189545(eq[8, A131818(n+1)])`
-/

namespace A189551.P17310444768582259313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189551.P17310444768582259313

/-!
# A189552: Number of arrangements of 9 nonzero numbers x(i) in -n..n with the sum of trunc(x(i)/x(i+1)) equal to zero.

The programs for A189552, there is no canonical definition to state claims against.
-/

/-! ## A189552.P2475784657466690938

`A189545(eq[13, A066657(n)])`
-/

namespace A189552.P2475784657466690938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189552.P2475784657466690938

/-! ## A189552.P14768390521444607392

`A189545(A000217(n+7)+8)`
-/

namespace A189552.P14768390521444607392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (A000217 (n + 7) + 8).toNat

end

end A189552.P14768390521444607392

/-! ## A189552.P763619142612349372

`A189545(eq[9, A131818(n+1)])`
-/

namespace A189552.P763619142612349372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189552.P763619142612349372

/-!
# A189554: Composite numbers n such that x' = n has no integer solution, where x' is the arithmetic derivative (A003415) of x.

The programs for A189554, there is no canonical definition to state claims against.
-/

/-! ## A189554.P6720477125414604707

`filter[A098700(n+1), A005171(#)]`
-/

namespace A189554.P6720477125414604707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A189554.P6720477125414604707

/-! ## A189554.P12088745473478316018

`filter[A098700(n+1), A066247(#)]`
-/

namespace A189554.P12088745473478316018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A189554.P12088745473478316018

/-! ## A189554.P11746757116492121527

`filter[A098700(n+1), A202238(#)]`
-/

namespace A189554.P11746757116492121527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A189554.P11746757116492121527

/-! ## A189554.P2452736956840680029

`filter[A098700(n+1), A292438(#)]`
-/

namespace A189554.P2452736956840680029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A189554.P2452736956840680029

/-! ## A189554.P1275840750628454368

`filter[A098700(n+1), A323162(#)]`
-/

namespace A189554.P1275840750628454368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A189554.P1275840750628454368

/-! ## A189554.P4120969044235424443

`∩[A002808(n+1), A098700(n+1)]`
-/

namespace A189554.P4120969044235424443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P4120969044235424443

/-! ## A189554.P9775735777102000486

`∩[A005381(n+1), A098700(n+1)]`
-/

namespace A189554.P9775735777102000486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P9775735777102000486

/-! ## A189554.P9333799862292915818

`∩[A009188(n+1), A098700(n+1)]`
-/

namespace A189554.P9333799862292915818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P9333799862292915818

/-! ## A189554.P17792742911515356399

`∩[A014076(n+1), A098700(n+1)]`
-/

namespace A189554.P17792742911515356399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P17792742911515356399

/-! ## A189554.P2853267046073250151

`∩[A018252(n+1), A098700(n+1)]`
-/

namespace A189554.P2853267046073250151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P2853267046073250151

/-! ## A189554.P18367986265916489901

`∩[A025583(n+1), A098700(n+1)]`
-/

namespace A189554.P18367986265916489901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P18367986265916489901

/-! ## A189554.P1448124428467898692

`∩[A039769(n+1), A098700(n+1)]`
-/

namespace A189554.P1448124428467898692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P1448124428467898692

/-! ## A189554.P17927515621438626247

`∩[A056653(n+1), A098700(n+1)]`
-/

namespace A189554.P17927515621438626247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P17927515621438626247

/-! ## A189554.P5563516131744115439

`∩[A058957(n+1), A098700(n+1)]`
-/

namespace A189554.P5563516131744115439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P5563516131744115439

/-! ## A189554.P8880305405871711904

`∩[A062973(n+1), A098700(n+1)]`
-/

namespace A189554.P8880305405871711904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P8880305405871711904

/-! ## A189554.P12532198029516351986

`∩[A067810(n+1), A098700(n+1)]`
-/

namespace A189554.P12532198029516351986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P12532198029516351986

/-! ## A189554.P12536569879144416453

`∩[A068780(n+1), A098700(n+1)]`
-/

namespace A189554.P12536569879144416453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P12536569879144416453

/-! ## A189554.P125457940480508498

`∩[A071904(n+1), A098700(n+1)]`
-/

namespace A189554.P125457940480508498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P125457940480508498

/-! ## A189554.P18241216721909058191

`∩[A072492(n+1), A098700(n+1)]`
-/

namespace A189554.P18241216721909058191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P18241216721909058191

/-! ## A189554.P16201318764979815206

`∩[A078505(n+1), A098700(n+1)]`
-/

namespace A189554.P16201318764979815206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189554.P16201318764979815206

/-!
# A189555: Numbers n such that x' = n has two solutions, where x' is the arithmetic derivative (A003415) of x.

The programs for A189555, there is no canonical definition to state claims against.
-/

/-! ## A189555.P15501930580303955502

`eq[2, A099302(n+2)]+2`
-/

namespace A189555.P15501930580303955502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A189555.P15501930580303955502

/-! ## A189555.P12221302611835852242

`A009056(eq[2, A099302(n+2)])`
-/

namespace A189555.P12221302611835852242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189555.P12221302611835852242

/-! ## A189555.P15972438668248521810

`eq[2, A099302(A289207(n)+2)]`
-/

namespace A189555.P15972438668248521810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A289207 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189555.P15972438668248521810

/-! ## A189555.P8537973076687875083

`eq[2, A099302(A233583(n+1))]`
-/

namespace A189555.P8537973076687875083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189555.P8537973076687875083

/-!
# A189556: Prime numbers n such that x' = n has two solutions, where x' is the arithmetic derivative (A003415) of x.

The programs for A189556, there is no canonical definition to state claims against.
-/

/-! ## A189556.P9629205530488094294

`p?[A189555(n+1)]`
-/

namespace A189556.P9629205530488094294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189556.P9629205530488094294

/-! ## A189556.P4042822492863726316

`p?[record[A189555(A052938(n))]]`
-/

namespace A189556.P4042822492863726316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189555 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189556.P4042822492863726316

/-! ## A189556.P13854815883788327082

`p?[record[A189555(A324346(n))]]`
-/

namespace A189556.P13854815883788327082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189555 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189556.P13854815883788327082

/-! ## A189556.P8674156649080085458

`record[A014963(A189555(n+8))]`
-/

namespace A189556.P8674156649080085458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A189555 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189556.P8674156649080085458

/-! ## A189556.P289314560673197135

`filter[A189555(n+1), A010051(#)]`
-/

namespace A189556.P289314560673197135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A189556.P289314560673197135

/-!
# A189557: Prime numbers n such that x' = n has one solution, where x' is the arithmetic derivative (A003415) of x.

The programs for A189557, there is no canonical definition to state claims against.
-/

/-! ## A189557.P18342181203760178848

`p?[A189481(n+1)]`
-/

namespace A189557.P18342181203760178848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189557.P18342181203760178848

/-! ## A189557.P7994404615318207428

`record[A006530(A189481(n+2))]`
-/

namespace A189557.P7994404615318207428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A189481 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189557.P7994404615318207428

/-! ## A189557.P8195208536334097021

`filter[A189481(n+1), A010051(#)]`
-/

namespace A189557.P8195208536334097021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A189557.P8195208536334097021

/-! ## A189557.P3233867262734892763

`filter[A189481(n+1), A379969(#)]`
-/

namespace A189557.P3233867262734892763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A189557.P3233867262734892763

/-! ## A189557.P10421222098903075149

`∩[A000040(n+1), A189481(n+1)]`
-/

namespace A189557.P10421222098903075149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P10421222098903075149

/-! ## A189557.P3452284037419231684

`∩[A006005(n+1), A189481(n+1)]`
-/

namespace A189557.P3452284037419231684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P3452284037419231684

/-! ## A189557.P15962219881780283067

`∩[A008578(n+1), A189481(n+1)]`
-/

namespace A189557.P15962219881780283067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P15962219881780283067

/-! ## A189557.P13426331030571971297

`∩[A045344(n+1), A189481(n+1)]`
-/

namespace A189557.P13426331030571971297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P13426331030571971297

/-! ## A189557.P15116109129255810554

`∩[A065091(n+1), A189481(n+1)]`
-/

namespace A189557.P15116109129255810554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P15116109129255810554

/-! ## A189557.P4076528756626570428

`∩[A106118(n+1), A189481(n+1)]`
-/

namespace A189557.P4076528756626570428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P4076528756626570428

/-! ## A189557.P13162526119025926764

`∩[A108719(n+1), A189481(n+1)]`
-/

namespace A189557.P13162526119025926764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P13162526119025926764

/-! ## A189557.P16963005865578577282

`∩[A140475(n+1), A189481(n+1)]`
-/

namespace A189557.P16963005865578577282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P16963005865578577282

/-! ## A189557.P7643215395606341427

`∩[A158611(n+1), A189481(n+1)]`
-/

namespace A189557.P7643215395606341427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P7643215395606341427

/-! ## A189557.P7639764392195765419

`∩[A171577(n+1), A189481(n+1)]`
-/

namespace A189557.P7639764392195765419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P7639764392195765419

/-! ## A189557.P16852754886432832108

`∩[A182986(n+1), A189481(n+1)]`
-/

namespace A189557.P16852754886432832108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P16852754886432832108

/-! ## A189557.P15825650957114440933

`∩[A189481(n+1), A201879(n+1)]`
-/

namespace A189557.P15825650957114440933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P15825650957114440933

/-! ## A189557.P478660595567972659

`∩[A189481(n+1), A215848(n+1)]`
-/

namespace A189557.P478660595567972659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P478660595567972659

/-! ## A189557.P17707378631850311297

`∩[A189481(n+1), A235050(n+1)]`
-/

namespace A189557.P17707378631850311297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P17707378631850311297

/-! ## A189557.P8056651399803213024

`∩[A189481(n+1), A326715(n+1)]`
-/

namespace A189557.P8056651399803213024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P8056651399803213024

/-! ## A189557.P5305956105157845703

`∩[A189481(n+1), A393492(n+1)]`
-/

namespace A189557.P5305956105157845703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189557.P5305956105157845703

/-!
# A189558: Least number k>0 such that x' = k has n solutions, where x' is the arithmetic derivative (A003415) of x.

The programs for A189558, there is no canonical definition to state claims against.
-/

/-! ## A189558.P17614106669962135225

`A189562(∑[A189561(n)]-A189561(n))`
-/

namespace A189558.P17614106669962135225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189562 (∑ j ∈ Finset.range (n + 1), f1 j - A189561 n).toNat

end

end A189558.P17614106669962135225

/-!
# A189559: Least prime k such that x' = k has n solutions, where x' is the arithmetic derivative (A003415) of x.

The programs for A189559, there is no canonical definition to state claims against.
-/

/-! ## A189559.P8980643282523245394

`A006530(n^ceil(atan(n))+4*10^n-1)`
-/

namespace A189559.P8980643282523245394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + ((4 * 10 ^ n : ℤ) - 1 : ℚ))).toNat

end

end A189559.P8980643282523245394

/-!
# A189560: Least odd number k such that x' = k has n solutions, where x' is the arithmetic derivative (A003415) of x.

The programs for A189560, there is no canonical definition to state claims against.
-/

/-! ## A189560.P4576921560217281831

`A242205(2*n+1)+2-n`
-/

namespace A189560.P4576921560217281831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242205 (2 * n + 1) + (2 - (n : ℤ))

end

end A189560.P4576921560217281831

/-!
# A189562: Irregular triangle in which row n has even numbers k that have n solutions to the equation x' = k, where x' denotes the arithmetic derivative (A003415).

The programs for A189562, there is no canonical definition to state claims against.
-/

/-! ## A189562.P10854690555538496643

`A084562(record[A058398(n+1)])`
-/

namespace A189562.P10854690555538496643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189562.P10854690555538496643

/-! ## A189562.P146003851844486691

`A084562(record[A226080(n+1)])`
-/

namespace A189562.P146003851844486691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189562.P146003851844486691

/-! ## A189562.P14040365834346959545

`A084562(comp[A084451(n)]+1)`
-/

namespace A189562.P14040365834346959545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084451 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A189562.P14040365834346959545

/-! ## A189562.P4040660186881112874

`A084562(comp[A000040(n+4)]+1)`
-/

namespace A189562.P4040660186881112874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084562 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A189562.P4040660186881112874

/-!
# A189563: Number of permutations p of 1,2,...,n satisfying |p(i+1)-p(i)|<>4 and |p(j+4)-p(j)|<>1 for all i=1..n-1, j=1..n-4.

The programs for A189563, there is no canonical definition to state claims against.
-/

/-! ## A189563.P10254824570966203952

`A189851(n^ceil(sqrt(n+1)-root(n+1, 3)))`
-/

namespace A189563.P10254824570966203952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189851 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ : ℤ))).toNat

end

end A189563.P10254824570966203952

/-! ## A189563.P6936901127652531159

`A189851(A028310(n))^A287383(n)`
-/

namespace A189563.P6936901127652531159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189851 (A028310 n).toNat : ℚ) ^ (A287383 n : ℤ)

end

end A189563.P6936901127652531159

/-! ## A189563.P17682353427986638610

`A189851(A028310(n))^A290544(n)`
-/

namespace A189563.P17682353427986638610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189851 (A028310 n).toNat : ℚ) ^ (A290544 n : ℤ)

end

end A189563.P17682353427986638610

/-! ## A189563.P3191956752467973357

`C(A189851(A114806(n)), A287022(n))`
-/

namespace A189563.P3191956752467973357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A189851 (A114806 n).toNat).toNat (A287022 n).toNat

end

end A189563.P3191956752467973357

/-!
# A189564: Number of permutations p of 1,2,...,n satisfying |p(i+1)-p(i)|<>5 and |p(j+5)-p(j)|<>1 for all i=1..n-1, j=1..n-5.

The programs for A189564, there is no canonical definition to state claims against.
-/

/-! ## A189564.P5198969785459946337

`A189852(A114806(n))`
-/

namespace A189564.P5198969785459946337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189852 (A114806 n).toNat

end

end A189564.P5198969785459946337

/-! ## A189564.P5990782687345899315

`A189852(n^A055640(n))`
-/

namespace A189564.P5990782687345899315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189852 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A189564.P5990782687345899315

/-! ## A189564.P2411199112434531754

`A189852(n^A322401(n))`
-/

namespace A189564.P2411199112434531754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189852 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322401 n : ℤ))).toNat

end

end A189564.P2411199112434531754

/-! ## A189564.P14408864489810050742

`A189852(n^A330634(n))`
-/

namespace A189564.P14408864489810050742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189852 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A330634 n : ℤ))).toNat

end

end A189564.P14408864489810050742

/-! ## A189564.P18102489686270624746

`A189852(C(n, A055640(n)))`
-/

namespace A189564.P18102489686270624746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189852 (Nat.choose n (A055640 n).toNat)

end

end A189564.P18102489686270624746

/-!
# A189565: Number of permutations p of 1,2,...,n satisfying |p(i+2)-p(i)|<>3 and |p(j+3)-p(j)|<>2 for all i=1..n-2, j=1..n-3.

The programs for A189565, there is no canonical definition to state claims against.
-/

/-! ## A189565.P634362300759496268

`A291069(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A189565.P634362300759496268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  A291069 (a (n - 1)).toNat

end

end A189565.P634362300759496268

/-! ## A189565.P8724146228030343494

`A189854(C(n, ∑{d}[n+1, (n-#)%2]+1))`
-/

namespace A189565.P8724146228030343494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189854 (Nat.choose n (∑ d ∈ Nat.divisors (f1 n), Int.tmod ((n : ℤ) - (d : ℤ)) 2 + 1).toNat)

end

end A189565.P8724146228030343494

/-! ## A189565.P3862991426506673297

`∏{e}[A016290(n), A189854(#)]`
-/

namespace A189565.P3862991426506673297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A189854 (Nat.factorization (f1 n).natAbs p)

end

end A189565.P3862991426506673297

/-!
# A189566: Number of permutations p of 1,2,...,n satisfying |p(i+2)-p(i)|<>4 and |p(j+4)-p(j)|<>2 for all i=1..n-2, j=1..n-4.

The programs for A189566, there is no canonical definition to state claims against.
-/

/-! ## A189566.P17028896075271163699

`A189855((n+1)/4^val(n+1, 4)*∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A189566.P17028896075271163699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189855 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))).toNat

end

end A189566.P17028896075271163699

/-! ## A189566.P8227833411699776842

`A189855(∑[A287022(n)])`
-/

namespace A189566.P8227833411699776842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189855 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189566.P8227833411699776842

/-! ## A189566.P6345680982923661318

`A189855(∑[A290544(n)])`
-/

namespace A189566.P6345680982923661318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189855 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189566.P6345680982923661318

/-! ## A189566.P17338370181835117236

`A028310(A189855(n+1))`
-/

namespace A189566.P17338370181835117236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A189855 (n + 1)).toNat

end

end A189566.P17338370181835117236

/-!
# A189567: Number of permutations p of 1,2,...,n satisfying |p(i+2)-p(i)|<>5 and |p(j+5)-p(j)|<>2 for all i=1..n-2, j=1..n-5.

The programs for A189567, there is no canonical definition to state claims against.
-/

/-! ## A189567.P9853671568840545221

`A189856(A114806(n))`
-/

namespace A189567.P9853671568840545221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189856 (A114806 n).toNat

end

end A189567.P9853671568840545221

/-! ## A189567.P13567245412334495182

`A189856(n^A055640(n))`
-/

namespace A189567.P13567245412334495182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189856 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A189567.P13567245412334495182

/-! ## A189567.P2720293294456162119

`A189856(n^A322401(n))`
-/

namespace A189567.P2720293294456162119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189856 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322401 n : ℤ))).toNat

end

end A189567.P2720293294456162119

/-! ## A189567.P15300307922997203359

`A189856(n^A330634(n))`
-/

namespace A189567.P15300307922997203359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189856 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A330634 n : ℤ))).toNat

end

end A189567.P15300307922997203359

/-! ## A189567.P13963495054112233048

`A189856(C(n, A055640(n)))`
-/

namespace A189567.P13963495054112233048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189856 (Nat.choose n (A055640 n).toNat)

end

end A189567.P13963495054112233048

/-!
# A189568: Number of permutations p of 1,2,...,n satisfying |p(i+3)-p(i)|<>4 and |p(j+4)-p(j)|<>3 for all i=1..n-3, j=1..n-4.

The programs for A189568, there is no canonical definition to state claims against.
-/

/-! ## A189568.P11210215138941903416

`A189858(A146075(n)+n)`
-/

namespace A189568.P11210215138941903416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189858 (A146075 n + (n : ℤ)).toNat

end

end A189568.P11210215138941903416

/-! ## A189568.P12052382838716895920

`A189858(n^A110656(n))`
-/

namespace A189568.P12052382838716895920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189858 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A189568.P12052382838716895920

/-! ## A189568.P17806293257970859850

`A189858(n^A115721(n))`
-/

namespace A189568.P17806293257970859850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189858 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A115721 n : ℤ))).toNat

end

end A189568.P17806293257970859850

/-! ## A189568.P13552293713918035636

`A189858(n^A115722(n))`
-/

namespace A189568.P13552293713918035636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189858 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A115722 n : ℤ))).toNat

end

end A189568.P13552293713918035636

/-! ## A189568.P13438738134469293128

`A189858(C(n, A110656(n)))`
-/

namespace A189568.P13438738134469293128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189858 (Nat.choose n (A110656 n).toNat)

end

end A189568.P13438738134469293128

/-!
# A189569: Number of permutations p of 1,2,...,n satisfying |p(i+3)-p(i)|<>5 and |p(j+5)-p(j)|<>3 for all i=1..n-3, j=1..n-5.

The programs for A189569, there is no canonical definition to state claims against.
-/

/-! ## A189569.P10370339495030755065

`A189859(A114806(n))`
-/

namespace A189569.P10370339495030755065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189859 (A114806 n).toNat

end

end A189569.P10370339495030755065

/-! ## A189569.P4149410172176579575

`A189859(n^A055640(n))`
-/

namespace A189569.P4149410172176579575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189859 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A189569.P4149410172176579575

/-! ## A189569.P1861131694448004836

`A189859(n^A322401(n))`
-/

namespace A189569.P1861131694448004836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189859 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322401 n : ℤ))).toNat

end

end A189569.P1861131694448004836

/-! ## A189569.P8897901991089073542

`A189859(n^A330634(n))`
-/

namespace A189569.P8897901991089073542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189859 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A330634 n : ℤ))).toNat

end

end A189569.P8897901991089073542

/-! ## A189569.P2791118690954543986

`A189859(C(n, A055640(n)))`
-/

namespace A189569.P2791118690954543986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189859 (Nat.choose n (A055640 n).toNat)

end

end A189569.P2791118690954543986

/-!
# A189570: Number of permutations p of 1,2,...,n satisfying |p(i+4)-p(i)|<>5 and |p(j+5)-p(j)|<>4 for all i=1..n-4, j=1..n-5.

The programs for A189570, there is no canonical definition to state claims against.
-/

/-! ## A189570.P15219495958125661783

`A189861(n^A055640(n))`
-/

namespace A189570.P15219495958125661783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189861 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A189570.P15219495958125661783

/-! ## A189570.P1137495819247339651

`A189861(n^A322401(n))`
-/

namespace A189570.P1137495819247339651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189861 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322401 n : ℤ))).toNat

end

end A189570.P1137495819247339651

/-! ## A189570.P14977578835927660661

`A189861(n^A330634(n))`
-/

namespace A189570.P14977578835927660661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189861 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A330634 n : ℤ))).toNat

end

end A189570.P14977578835927660661

/-! ## A189570.P2994723935548738981

`A189861(C(n, A055640(n)))`
-/

namespace A189570.P2994723935548738981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189861 (Nat.choose n (A055640 n).toNat)

end

end A189570.P2994723935548738981

/-! ## A189570.P2191280891575168275

`A189861(C(n, A322401(n)))`
-/

namespace A189570.P2191280891575168275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189861 (Nat.choose n (A322401 n).toNat)

end

end A189570.P2191280891575168275

/-!
# A189573: Positions of 0 in A189572; complement of A080652 (conjectured).

The programs for A189573, the canonical program `A189573.P16890274854496627003` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189573 has offset 1).

The definition of A189573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189573.P18294118806659621786

`round(n/(2-sqrt(2)))+1`
-/

namespace A189573.P18294118806659621786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (2 - Real.sqrt (2 : ℝ))) + 1

end

end A189573.P18294118806659621786

namespace A189573

/-- `round(n/(2-sqrt(2)))+1` -/
def P18294118806659621786.Spec : Prop :=
  ∀ n, P18294118806659621786.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P14150586378861158827

`round(n/sqrt(2)-xor(n, -1))`
-/

namespace A189573.P14150586378861158827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ) - (Int.xor (n : ℤ) (-1) : ℝ))

end

end A189573.P14150586378861158827

namespace A189573

/-- `round(n/sqrt(2)-xor(n, -1))` -/
def P14150586378861158827.Spec : Prop :=
  ∀ n, P14150586378861158827.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P7700972731953342224

`round(n*cos(atan(1))+n+1)`
-/

namespace A189573.P7700972731953342224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cos (Real.arctan (1 : ℝ)) + (n + 1 : ℝ))

end

end A189573.P7700972731953342224

namespace A189573

/-- `round(n*cos(atan(1))+n+1)` -/
def P7700972731953342224.Spec : Prop :=
  ∀ n, P7700972731953342224.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P15043968094933832530

`round(n*sin(atan(1))+n+1)`
-/

namespace A189573.P15043968094933832530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sin (Real.arctan (1 : ℝ)) + (n + 1 : ℝ))

end

end A189573.P15043968094933832530

namespace A189573

/-- `round(n*sin(atan(1))+n+1)` -/
def P15043968094933832530.Spec : Prop :=
  ∀ n, P15043968094933832530.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P14762355398479629360

`round(n*cos(acot(1))+n+1)`
-/

namespace A189573.P14762355398479629360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cos (SequenceMachineLib.acot (1 : ℝ)) + (n + 1 : ℝ))

end

end A189573.P14762355398479629360

namespace A189573

/-- `round(n*cos(acot(1))+n+1)` -/
def P14762355398479629360.Spec : Prop :=
  ∀ n, P14762355398479629360.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P9711909004816953708

`round(n*sin(acot(1))+n+1)`
-/

namespace A189573.P9711909004816953708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sin (SequenceMachineLib.acot (1 : ℝ)) + (n + 1 : ℝ))

end

end A189573.P9711909004816953708

namespace A189573

/-- `round(n*sin(acot(1))+n+1)` -/
def P9711909004816953708.Spec : Prop :=
  ∀ n, P9711909004816953708.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P9558732748424203482

`floor(A289037(n+1)/2)`
-/

namespace A189573.P9558732748424203482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289037 (n + 1) : ℚ) / 2⌋

end

end A189573.P9558732748424203482

namespace A189573

/-- `floor(A289037(n+1)/2)` -/
def P9558732748424203482.Spec : Prop :=
  ∀ n, P9558732748424203482.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P15163945848267538442

`∑[char[A001953(n)+1]+1]`
-/

namespace A189573.P15163945848267538442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189573.P15163945848267538442

namespace A189573

/-- `∑[char[A001953(n)+1]+1]` -/
def P15163945848267538442.Spec : Prop :=
  ∀ n, (P15163945848267538442.a n : ℤ) = A189573 (n + 1)

end A189573

/-! ## A189573.P4027954888468050125

`∑[char[A136119(n+1)]+1]`
-/

namespace A189573.P4027954888468050125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189573.P4027954888468050125

namespace A189573

/-- `∑[char[A136119(n+1)]+1]` -/
def P4027954888468050125.Spec : Prop :=
  ∀ n, (P4027954888468050125.a n : ℤ) = A189573 (n + 1)

end A189573

/-! ## A189573.P10120868225883821723

`comp[comp[A184119(n+1)]+n]`
-/

namespace A189573.P10120868225883821723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A189573.P10120868225883821723

namespace A189573

/-- `comp[comp[A184119(n+1)]+n]` -/
def P10120868225883821723.Spec : Prop :=
  ∀ n, (P10120868225883821723.a n : ℤ) = A189573 (n + 1)

end A189573

/-! ## A189573.P11158139456881080844

`round((A285075(n+1)+n)/2)`
-/

namespace A189573.P11158139456881080844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285075 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A189573.P11158139456881080844

namespace A189573

/-- `round((A285075(n+1)+n)/2)` -/
def P11158139456881080844.Spec : Prop :=
  ∀ n, P11158139456881080844.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P16890274854496627003

`round((A001951(n)+2*(n+1))/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189573

/-- `round((A001951(n)+2*(n+1))/2)` -/
def P16890274854496627003.Spec : Prop :=
  ∀ n, P16890274854496627003.a n = A189573 (n + 1)

theorem P16890274854496627003.correct : P16890274854496627003.Spec := by
  intro n
  simp only [A189573, Nat.add_sub_cancel]

end A189573

/-! ## A189573.P17568655149219563572

`∪[A064437(n+1), A086377(n+1)]`
-/

namespace A189573.P17568655149219563572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189573.P17568655149219563572

namespace A189573

/-- `∪[A064437(n+1), A086377(n+1)]` -/
def P17568655149219563572.Spec : Prop :=
  ∀ n, (P17568655149219563572.a n : ℤ) = A189573 (n + 1)

end A189573

/-! ## A189573.P6925632658829463687

`A188040(A001951(n)+1)`
-/

namespace A189573.P6925632658829463687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (A001951 n + 1).toNat

end

end A189573.P6925632658829463687

namespace A189573

/-- `A188040(A001951(n)+1)` -/
def P6925632658829463687.Spec : Prop :=
  ∀ n, P6925632658829463687.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P13272359018738393541

`ceil(A188298(2*(n+1))/2)`
-/

namespace A189573.P13272359018738393541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188298 (2 * (n + 1)) : ℚ) / 2⌉

end

end A189573.P13272359018738393541

namespace A189573

/-- `ceil(A188298(2*(n+1))/2)` -/
def P13272359018738393541.Spec : Prop :=
  ∀ n, P13272359018738393541.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P10678063224640517638

`A336109(A188040(2*n+1)-n)`
-/

namespace A189573.P10678063224640517638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A188040 (2 * n + 1) - (n : ℤ)).toNat

end

end A189573.P10678063224640517638

namespace A189573

/-- `A336109(A188040(2*n+1)-n)` -/
def P10678063224640517638.Spec : Prop :=
  ∀ n, P10678063224640517638.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P7691972948576210411

`A049474(comp[A049474(n)+n])`
-/

namespace A189573.P7691972948576210411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A189573.P7691972948576210411

namespace A189573

/-- `A049474(comp[A049474(n)+n])` -/
def P7691972948576210411.Spec : Prop :=
  ∀ n, P7691972948576210411.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P859092896702428491

`A049474(A285075(n+1)-1)`
-/

namespace A189573.P859092896702428491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A285075 (n + 1) - 1).toNat

end

end A189573.P859092896702428491

namespace A189573

/-- `A049474(A285075(n+1)-1)` -/
def P859092896702428491.Spec : Prop :=
  ∀ n, P859092896702428491.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P12046852284923380548

`A049474(A001951(n)+1+n)`
-/

namespace A189573.P12046852284923380548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A001951 n + 1 + (n : ℤ)).toNat

end

end A189573.P12046852284923380548

namespace A189573

/-- `A049474(A001951(n)+1+n)` -/
def P12046852284923380548.Spec : Prop :=
  ∀ n, P12046852284923380548.a n = A189573 (n + 1)

end A189573

/-! ## A189573.P13806630912049915667

`A049474(record[Δ[n*A049474(n)]])`
-/

namespace A189573.P13806630912049915667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189573.P13806630912049915667

namespace A189573

/-- `A049474(record[Δ[n*A049474(n)]])` -/
def P13806630912049915667.Spec : Prop :=
  ∀ n, P13806630912049915667.a n = A189573 (n + 1)

end A189573

/-!
# A189574: Partial sums of A189572.

The programs for A189574, the canonical program `A189574.P10214067056555353590` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189574 has offset 1).

The definition of A189574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189574.P16722919184325516906

`floor(2*sqrt(∑[n])-n)`
-/

namespace A189574.P16722919184325516906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (n : ℝ)⌋

end

end A189574.P16722919184325516906

namespace A189574

/-- `floor(2*sqrt(∑[n])-n)` -/
def P16722919184325516906.Spec : Prop :=
  ∀ n, P16722919184325516906.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P10283684915459371128

`floor(2*sqrt(C(n+1, 2)))-n`
-/

namespace A189574.P10283684915459371128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (Nat.choose (n + 1) 2 : ℝ)⌋ - (n : ℤ)

end

end A189574.P10283684915459371128

namespace A189574

/-- `floor(2*sqrt(C(n+1, 2)))-n` -/
def P10283684915459371128.Spec : Prop :=
  ∀ n, P10283684915459371128.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P10214067056555353590

`ceil((n-a(a(n-1)))/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189574

/-- `ceil((n-a(a(n-1)))/2)` -/
def P10214067056555353590.Spec : Prop :=
  ∀ n, P10214067056555353590.a n = A189574 (n + 1)

theorem P10214067056555353590.correct : P10214067056555353590.Spec := by
  intro n
  simp only [A189574, Nat.add_sub_cancel]

end A189574

/-! ## A189574.P8621944430208329351

`round((n-a(a(n-1)))/2)` with `a(0)=0`
-/

namespace A189574.P8621944430208329351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (((n : ℤ) - a (a (n - 1)).toNat : ℚ) / 2)

end

end A189574.P8621944430208329351

namespace A189574

/-- `round((n-a(a(n-1)))/2)` -/
def P8621944430208329351.Spec : Prop :=
  ∀ n, P8621944430208329351.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P769481457685181116

`ceil((2*n+1)/sqrt(2))%(n+1)`
-/

namespace A189574.P769481457685181116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌉ (n + 1 : ℤ)

end

end A189574.P769481457685181116

namespace A189574

/-- `ceil((2*n+1)/sqrt(2))%(n+1)` -/
def P769481457685181116.Spec : Prop :=
  ∀ n, P769481457685181116.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P2794401864907792933

`n-(a(n-1)+a(a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A189574.P2794401864907792933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (a (n - 1) + a (a (n - 2)).toNat)

end

end A189574.P2794401864907792933

namespace A189574

/-- `n-(a(n-1)+a(a(n-2)))` -/
def P2794401864907792933.Spec : Prop :=
  ∀ n, P2794401864907792933.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P1150250369755149306

`n-a(n-1)-a(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A189574.P1150250369755149306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (n - 1) - a (a (n - 2)).toNat

end

end A189574.P1150250369755149306

namespace A189574

/-- `n-a(n-1)-a(a(n-2))` -/
def P1150250369755149306.Spec : Prop :=
  ∀ n, P1150250369755149306.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P4651169159358551449

`A001953(n)-n`
-/

namespace A189574.P4651169159358551449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n - (n : ℤ)

end

end A189574.P4651169159358551449

namespace A189574

/-- `A001953(n)-n` -/
def P4651169159358551449.Spec : Prop :=
  ∀ n, P4651169159358551449.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P17189401958179698698

`∑[A189572(n+1)]`
-/

namespace A189574.P17189401958179698698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189574.P17189401958179698698

namespace A189574

/-- `∑[A189572(n+1)]` -/
def P17189401958179698698.Spec : Prop :=
  ∀ n, P17189401958179698698.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P713433106529932496

`comp[A001954(n)]-n`
-/

namespace A189574.P713433106529932496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A189574.P713433106529932496

namespace A189574

/-- `comp[A001954(n)]-n` -/
def P713433106529932496.Spec : Prop :=
  ∀ n, P713433106529932496.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P6480029259468816539

`∑[char[A086377(n+1)]]`
-/

namespace A189574.P6480029259468816539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189574.P6480029259468816539

namespace A189574

/-- `∑[char[A086377(n+1)]]` -/
def P6480029259468816539.Spec : Prop :=
  ∀ n, (P6480029259468816539.a n : ℤ) = A189574 (n + 1)

end A189574

/-! ## A189574.P4130125686643722089

`floor(sqrt(A046092(n)))-n`
-/

namespace A189574.P4130125686643722089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A046092 n) - (n : ℤ)

end

end A189574.P4130125686643722089

namespace A189574

/-- `floor(sqrt(A046092(n)))-n` -/
def P4130125686643722089.Spec : Prop :=
  ∀ n, P4130125686643722089.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P7266795073006874654

`A136119(n+1)-(n+1)`
-/

namespace A189574.P7266795073006874654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) - (n + 1 : ℤ)

end

end A189574.P7266795073006874654

namespace A189574

/-- `A136119(n+1)-(n+1)` -/
def P7266795073006874654.Spec : Prop :=
  ∀ n, P7266795073006874654.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P4850558681378755984

`A004641(n)+a(n-1)` with `a(0)=0`
-/

namespace A189574.P4850558681378755984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004641 n + a (n - 1)

end

end A189574.P4850558681378755984

namespace A189574

/-- `A004641(n)+a(n-1)` -/
def P4850558681378755984.Spec : Prop :=
  ∀ n, P4850558681378755984.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P13751263164593124675

`A049473(n-a(n-1))` with `a(0)=0`
-/

namespace A189574.P13751263164593124675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049473 ((n : ℤ) - a (n - 1)).toNat

end

end A189574.P13751263164593124675

namespace A189574

/-- `A049473(n-a(n-1))` -/
def P13751263164593124675.Spec : Prop :=
  ∀ n, P13751263164593124675.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P10590967460763390767

`∑[char[A064437(n+2)-2]]`
-/

namespace A189574.P10590967460763390767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189574.P10590967460763390767

namespace A189574

/-- `∑[char[A064437(n+2)-2]]` -/
def P10590967460763390767.Spec : Prop :=
  ∀ n, (P10590967460763390767.a n : ℤ) = A189574 (n + 1)

end A189574

/-! ## A189574.P272452607622256872

`ceil(n²/A003151(n+1))`
-/

namespace A189574.P272452607622256872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / (A003151 (n + 1) : ℚ)⌉

end

end A189574.P272452607622256872

namespace A189574

/-- `ceil(n²/A003151(n+1))` -/
def P272452607622256872.Spec : Prop :=
  ∀ n, P272452607622256872.a n = A189574 (n + 1)

end A189574

/-! ## A189574.P4367306213110247977

`comp[A003152(2*n+1)]-n`
-/

namespace A189574.P4367306213110247977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A189574.P4367306213110247977

namespace A189574

/-- `comp[A003152(2*n+1)]-n` -/
def P4367306213110247977.Spec : Prop :=
  ∀ n, P4367306213110247977.a n = A189574 (n + 1)

end A189574

/-!
# A189575: Partial sums of A189476.

The programs for A189575, there is no canonical definition to state claims against.
-/

/-! ## A189575.P13516185551229912274

`∑[A189476(n+1)]`
-/

namespace A189575.P13516185551229912274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P13516185551229912274

/-! ## A189575.P4248890558005781222

`∑[char[A189478(n+1)-1]]`
-/

namespace A189575.P4248890558005781222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P4248890558005781222

/-! ## A189575.P12009566598021350587

`∑[A002264(Δ[A189478(n+1)])]`
-/

namespace A189575.P12009566598021350587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P12009566598021350587

/-! ## A189575.P13715320523873958206

`∑[A060144(Δ[A189478(n+1)])]`
-/

namespace A189575.P13715320523873958206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P13715320523873958206

/-! ## A189575.P16673062241797307714

`∑[A065684(Δ[A189478(n+1)])]`
-/

namespace A189575.P16673062241797307714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065684 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P16673062241797307714

/-! ## A189575.P11685817266524591924

`∑[A124027(Δ[A189478(n+1)])]`
-/

namespace A189575.P11685817266524591924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P11685817266524591924

/-! ## A189575.P1740264088476846623

`∑[A189627(Δ[A189478(n+1)])]`
-/

namespace A189575.P1740264088476846623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189627 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P1740264088476846623

/-! ## A189575.P9803251375638680484

`∑[A214210(Δ[A189478(n+1)])]`
-/

namespace A189575.P9803251375638680484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214210 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P9803251375638680484

/-! ## A189575.P11667212890887581608

`∑[A235614(Δ[A189478(n+1)])]`
-/

namespace A189575.P11667212890887581608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235614 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189575.P11667212890887581608

/-!
# A189576: Fixed point of the morphism 0->01, 1->110.

The programs for A189576, there is no canonical definition to state claims against.
-/

/-! ## A189576.P3877150245659996242

`char[A189578(n+1)-1]`
-/

namespace A189576.P3877150245659996242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189578 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189576.P3877150245659996242

/-! ## A189576.P13602518282529316934

`char[comp[A189577(n+1)-1]]`
-/

namespace A189576.P13602518282529316934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189576.P13602518282529316934

/-! ## A189576.P521043333987719164

`A160166(A189577(n+1)-A026352(n))`
-/

namespace A189576.P521043333987719164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160166 (A189577 (n + 1) - A026352 n).toNat

end

end A189576.P521043333987719164

/-! ## A189576.P7914831329460353338

`Δ[A189577(n+1)]%2`
-/

namespace A189576.P7914831329460353338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A189576.P7914831329460353338

/-! ## A189576.P6541795647821198057

`A085491(Δ[A189577(n+1)])`
-/

namespace A189576.P6541795647821198057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (f1 (n + 1) - f1 n).toNat

end

end A189576.P6541795647821198057

/-! ## A189576.P6059338152826271437

`A156728(Δ[A189577(n+1)])`
-/

namespace A189576.P6059338152826271437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (f1 (n + 1) - f1 n).toNat

end

end A189576.P6059338152826271437

/-! ## A189576.P1848393348244817850

`A159684(Δ[A189577(n+1)])`
-/

namespace A189576.P1848393348244817850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (f1 (n + 1) - f1 n).toNat

end

end A189576.P1848393348244817850

/-! ## A189576.P9910827689482797751

`A250299(Δ[A189577(n+1)])`
-/

namespace A189576.P9910827689482797751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (f1 (n + 1) - f1 n).toNat

end

end A189576.P9910827689482797751

/-! ## A189576.P6733828033188397857

`A257585(Δ[A189577(n+1)])`
-/

namespace A189576.P6733828033188397857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257585 (f1 (n + 1) - f1 n).toNat

end

end A189576.P6733828033188397857

/-! ## A189576.P14211024674437462256

`Δ[A189579(gcd(n, A008458(n)))]`
-/

namespace A189576.P14211024674437462256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189579 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189576.P14211024674437462256

/-! ## A189576.P12282982152838675804

`A000045(and(1, Δ[A189577(n+1)]))`
-/

namespace A189576.P12282982152838675804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A189576.P12282982152838675804

/-! ## A189576.P13313343554371379544

`A001221(and(1, Δ[A189577(n+1)])+1)`
-/

namespace A189576.P13313343554371379544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land 1 (f1 (n + 1) - f1 n) + 1).toNat

end

end A189576.P13313343554371379544

/-! ## A189576.P1732683479150535982

`A001222(and(1, Δ[A189577(n+1)])+1)`
-/

namespace A189576.P1732683479150535982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land 1 (f1 (n + 1) - f1 n) + 1).toNat

end

end A189576.P1732683479150535982

/-! ## A189576.P9123496062927560591

`and(1, Δ[A189577(n+1)])^A007318(n)`
-/

namespace A189576.P9123496062927560591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (f1 (n + 1) - f1 n) : ℚ) ^ (A007318 n : ℤ)

end

end A189576.P9123496062927560591

/-! ## A189576.P12853515693030518116

`A156728(A189577(n+2)-A189577(n+1))`
-/

namespace A189576.P12853515693030518116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A189577 (n + 2) - A189577 (n + 1)).toNat

end

end A189576.P12853515693030518116

/-! ## A189576.P11767244501110309775

`A159684(A189577(n+2)-A189577(n+1))`
-/

namespace A189576.P11767244501110309775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A189577 (n + 2) - A189577 (n + 1)).toNat

end

end A189576.P11767244501110309775

/-! ## A189576.P5272980749851883686

`A159684(A189577(n+2)%A189577(n+1))`
-/

namespace A189576.P5272980749851883686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (Int.tmod (A189577 (n + 2)) (A189577 (n + 1))).toNat

end

end A189576.P5272980749851883686

/-! ## A189576.P8500758720545808727

`and(1, Δ[A189577(n+1)])^A000041(n)`
-/

namespace A189576.P8500758720545808727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (f1 (n + 1) - f1 n) : ℚ) ^ (A000041 n : ℤ)

end

end A189576.P8500758720545808727

/-!
# A189577: Positions of 0 in A189576; complement of A189578.

The programs for A189577, there is no canonical definition to state claims against.
-/

/-! ## A189577.P6858839422948927009

`A189576(n+1)+A189579(n+1)+A005408(n)`
-/

namespace A189577.P6858839422948927009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (n + 1) + (A189579 (n + 1) + A005408 n)

end

end A189577.P6858839422948927009

/-! ## A189577.P17208245628037411705

`A189576(n+1)+A026351(A189579(n+1)+n)`
-/

namespace A189577.P17208245628037411705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (n + 1) + A026351 (A189579 (n + 1) + (n : ℤ)).toNat

end

end A189577.P17208245628037411705

/-! ## A189577.P12838677428877697753

`eq[0, A189576(n+1)]+1`
-/

namespace A189577.P12838677428877697753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189577.P12838677428877697753

/-! ## A189577.P11075342439376161128

`lt[n*char[A189578(n+1)], n]`
-/

namespace A189577.P11075342439376161128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189577.P11075342439376161128

/-! ## A189577.P1851225765102243051

`lt[char[A189578(n+1)], A057427(n)]`
-/

namespace A189577.P1851225765102243051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189577.P1851225765102243051

/-!
# A189578: Positions of 1 in A189576; complement of A189577.

The programs for A189578, there is no canonical definition to state claims against.
-/

/-! ## A189578.P9759312209552493736

`comp[A189577(n+1)-1]+1`
-/

namespace A189578.P9759312209552493736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189578.P9759312209552493736

/-! ## A189578.P1756331629977161926

`filter[n+1, A189576(#)]`
-/

namespace A189578.P1756331629977161926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189576 (f1 j) = 1) n)

end

end A189578.P1756331629977161926

/-! ## A189578.P6340005543440728926

`eq[1, A189576(n+1)]+1`
-/

namespace A189578.P6340005543440728926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189578.P6340005543440728926

/-! ## A189578.P4192467283373983997

`record[2*A189576(n+2)+n]`
-/

namespace A189578.P4192467283373983997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189576 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189578.P4192467283373983997

/-! ## A189578.P11001738701956540881

`A026356(n+1)-A189579(A026351(n))`
-/

namespace A189578.P11001738701956540881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) - A189579 (A026351 n).toNat

end

end A189578.P11001738701956540881

/-! ## A189578.P1182719185312786596

`A004956(A026351(n))-A189579(A026351(n))`
-/

namespace A189578.P1182719185312786596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A026351 n).toNat - A189579 (A026351 n).toNat

end

end A189578.P1182719185312786596

/-! ## A189578.P5312164138944809766

`eq[1, A189576(A000007(n)+n)]`
-/

namespace A189578.P5312164138944809766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189578.P5312164138944809766

/-! ## A189578.P6943156200479433372

`lt[char[A189577(n+1)], A057427(n)]`
-/

namespace A189578.P6943156200479433372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189578.P6943156200479433372

/-! ## A189578.P1307337081061840316

`A061395(p?[A189576(n+1)+A006093(n+1)])`
-/

namespace A189578.P1307337081061840316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189578.P1307337081061840316

/-! ## A189578.P6873947053824924209

`eq[1, A189576(A123108(2*n))]`
-/

namespace A189578.P6873947053824924209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189578.P6873947053824924209

/-! ## A189578.P9092427924834569705

`A189576(2*floor(ϕ*n)+3+n)+floor(ϕ*n)+1`
-/

namespace A189578.P9092427924834569705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋ + 3 + (n : ℤ)).toNat + (⌊Real.goldenRatio * (n : ℝ)⌋ + 1)

end

end A189578.P9092427924834569705

/-!
# A189579: Partial sums of A189576.

The programs for A189579, there is no canonical definition to state claims against.
-/

/-! ## A189579.P6057156341757691654

`∑[A189576(n+1)]`
-/

namespace A189579.P6057156341757691654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P6057156341757691654

/-! ## A189579.P2914783461160990994

`∑[char[A189578(n+1)-1]]`
-/

namespace A189579.P2914783461160990994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189578 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P2914783461160990994

/-! ## A189579.P2140317934849104442

`∑[char[comp[A189577(n+1)-1]]]`
-/

namespace A189579.P2140317934849104442
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P2140317934849104442

/-! ## A189579.P17818128307006273641

`A189576(char[1]+1+n)+a(n-1)` with `a(0)=0`
-/

namespace A189579.P17818128307006273641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189576 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A189579.P17818128307006273641

/-! ## A189579.P15232639749091964910

`∑[Δ[A189577(n+1)]%2]`
-/

namespace A189579.P15232639749091964910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P15232639749091964910

/-! ## A189579.P6209478699733008199

`∑[A156728(Δ[A189577(n+1)])]`
-/

namespace A189579.P6209478699733008199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P6209478699733008199

/-! ## A189579.P11968476752642214688

`∑[A159684(Δ[A189577(n+1)])]`
-/

namespace A189579.P11968476752642214688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P11968476752642214688

/-! ## A189579.P2256725184500785068

`∑[A250299(Δ[A189577(n+1)])]`
-/

namespace A189579.P2256725184500785068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P2256725184500785068

/-! ## A189579.P8511269572585404720

`∑[A257585(Δ[A189577(n+1)])]`
-/

namespace A189579.P8511269572585404720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257585 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P8511269572585404720

/-! ## A189579.P2147453395465704681

`∑[A189479(A189577(n+1))]`
-/

namespace A189579.P2147453395465704681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (A189577 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189579.P2147453395465704681

/-!
# A189582: Number of permutations of 1..n with displacements restricted to {-4,-1,0,2,3}.

The programs for A189582, there is no canonical definition to state claims against.
-/

/-! ## A189582.P6420205578533964185

`A085053(A168612(n+1))`
-/

namespace A189582.P6420205578533964185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A168612 (n + 1)).toNat

end

end A189582.P6420205578533964185

/-!
# A189583: Number of permutations of 1..n with displacements restricted to {-4,-2,0,1,3}.

The programs for A189583, there is no canonical definition to state claims against.
-/

/-! ## A189583.P15124001011000686919

`A276581(floor(A005187(n)^(n/2)))`
-/

namespace A189583.P15124001011000686919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 ⌊(A005187 n : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat

end

end A189583.P15124001011000686919

/-! ## A189583.P1225358655485265058

`A102515(A242586(n))-∏{e}[n+1, #+1]`
-/

namespace A189583.P1225358655485265058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 (A242586 n).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A189583.P1225358655485265058

/-! ## A189583.P9536902430104830503

`A262689(A273704(n))-A055086(n)`
-/

namespace A189583.P9536902430104830503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A273704 n).toNat - A055086 n

end

end A189583.P9536902430104830503

/-! ## A189583.P724112677850298454

`A262689(A273704(n))-A276581(n)`
-/

namespace A189583.P724112677850298454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A273704 n).toNat - A276581 n

end

end A189583.P724112677850298454

/-!
# A189585: Number of permutations of 1..n with displacements restricted to {-4,-3,-1,0,2}.

The programs for A189585, there is no canonical definition to state claims against.
-/

/-! ## A189585.P9874321523075073403

`A051742(A274495(n+2))`
-/

namespace A189585.P9874321523075073403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A274495 (n + 2)).toNat

end

end A189585.P9874321523075073403

/-! ## A189585.P9254236866391007207

`A034968(A003471(n))+floor(2^(n-1))`
-/

namespace A189585.P9254236866391007207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A003471 n).toNat + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A189585.P9254236866391007207

/-! ## A189585.P18107219785973854788

`A367652(n)+A336695(A000088(n))`
-/

namespace A189585.P18107219785973854788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367652 n + A336695 (A000088 n).toNat

end

end A189585.P18107219785973854788

/-!
# A189588: Number of permutations of 1..n with displacements restricted to {-5,-4,-3,0,1,2}.

The programs for A189588, there is no canonical definition to state claims against.
-/

/-! ## A189588.P5333791257024140720

`A319515(A167934(floor(n^(5/4))))`
-/

namespace A189588.P5333791257024140720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319515 (A167934 ⌊(n : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋.toNat).toNat

end

end A189588.P5333791257024140720

/-! ## A189588.P4235624904029149997

`A164903(A271619(n)-A321863(n+1))`
-/

namespace A189588.P4235624904029149997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (A271619 n - A321863 (n + 1)).toNat

end

end A189588.P4235624904029149997

/-!
# A189589: Number of permutations of 1..n with displacements restricted to {-5,-4,-2,-1,0,3}.

The programs for A189589, there is no canonical definition to state claims against.
-/

/-! ## A189589.P3958053633740119279

`A265370(xor(3, A149407(n)))`
-/

namespace A189589.P3958053633740119279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (Int.xor 3 (A149407 n)).toNat

end

end A189589.P3958053633740119279

/-! ## A189589.P2839171110346734915

`A006479(n)+A000120(A006443(n))`
-/

namespace A189589.P2839171110346734915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006479 n + A000120 (A006443 n).toNat

end

end A189589.P2839171110346734915

/-! ## A189589.P409994800714321003

`A208062(n)-A083914(A076875(n))`
-/

namespace A189589.P409994800714321003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 n - A083914 (A076875 n).toNat

end

end A189589.P409994800714321003

/-! ## A189589.P5998970786862626664

`A208062(n)-A170957(A084376(n))`
-/

namespace A189589.P5998970786862626664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 n - A170957 (A084376 n).toNat

end

end A189589.P5998970786862626664

/-!
# A189590: Number of permutations of 1..n with displacements restricted to {-5,-4,-2,0,1,3}.

The programs for A189590, there is no canonical definition to state claims against.
-/

/-! ## A189590.P17898518500951121945

`A114147(A054152(n+1))-A334097(A192502(n))`
-/

namespace A189590.P17898518500951121945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114147 (A054152 (n + 1)).toNat - A334097 (A192502 n).toNat

end

end A189590.P17898518500951121945

/-!
# A189591: Number of permutations of 1..n with displacements restricted to {-5,-4,-1,0,2,3}.

The programs for A189591, there is no canonical definition to state claims against.
-/

/-! ## A189591.P1521506798157675196

`A283970(A351644(n))`
-/

namespace A189591.P1521506798157675196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (A351644 n).toNat

end

end A189591.P1521506798157675196

/-! ## A189591.P2548320438796634402

`A294337(∏[A220125(n)])`
-/

namespace A189591.P2548320438796634402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294337 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189591.P2548320438796634402

/-! ## A189591.P8330458876360838627

`A277121(A246829(n+1))`
-/

namespace A189591.P8330458876360838627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277121 (A246829 (n + 1)).toNat

end

end A189591.P8330458876360838627

/-!
# A189592: Number of permutations of 1..n with displacements restricted to {-5,-4,0,1,2,3}.

The programs for A189592, there is no canonical definition to state claims against.
-/

/-! ## A189592.P13330210005920876873

`A096315(a(n-1)+8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=8`
-/

namespace A189592.P13330210005920876873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 8] fun n a =>
  A096315 (a (n - 1) + 8).toNat

end

end A189592.P13330210005920876873

/-! ## A189592.P5065571792085828066

`A342191(A121652(n))`
-/

namespace A189592.P5065571792085828066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A121652 n).toNat

end

end A189592.P5065571792085828066

/-! ## A189592.P1580141501257076646

`A385575(A097120(n))`
-/

namespace A189592.P1580141501257076646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385575 (A097120 n).toNat

end

end A189592.P1580141501257076646

/-!
# A189593: Number of permutations of 1..n with displacements restricted to {-6,-5,-4,-3,-2,0,1}.

The programs for A189593, the canonical program `A189593.P10354416122710176974` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189593 has offset 1).

The definition of A189593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189593.P10354416122710176974

`a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=12, a(6)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189593

/-- `a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` -/
def P10354416122710176974.Spec : Prop :=
  ∀ n, (P10354416122710176974.a n : ℤ) = A189593 (n + 1)

theorem P10354416122710176974.correct : P10354416122710176974.Spec := by
  intro n
  simp only [A189593, Nat.add_sub_cancel]

end A189593

/-! ## A189593.P15258137423568839922

`A175406(A123908(n+1))`
-/

namespace A189593.P15258137423568839922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175406 (A123908 (n + 1)).toNat

end

end A189593.P15258137423568839922

namespace A189593

/-- `A175406(A123908(n+1))` -/
def P15258137423568839922.Spec : Prop :=
  ∀ n, P15258137423568839922.a n = A189593 (n + 1)

end A189593

/-! ## A189593.P13455081364081319220

`A248227(ratio[A123908(n)]*A123908(n))`
-/

namespace A189593.P13455081364081319220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A123908 n : ℚ))).toNat

end

end A189593.P13455081364081319220

namespace A189593

/-- `A248227(ratio[A123908(n)]*A123908(n))` -/
def P13455081364081319220.Spec : Prop :=
  ∀ n, P13455081364081319220.a n = A189593 (n + 1)

end A189593

/-! ## A189593.P4239000332136469826

`A226190(A100671(n))`
-/

namespace A189593.P4239000332136469826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A100671 n).toNat

end

end A189593.P4239000332136469826

namespace A189593

/-- `A226190(A100671(n))` -/
def P4239000332136469826.Spec : Prop :=
  ∀ n, P4239000332136469826.a n = A189593 (n + 1)

end A189593

/-! ## A189593.P1036975935812404902

`A026819(∑[A025249(n+1)])`
-/

namespace A189593.P1036975935812404902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189593.P1036975935812404902

namespace A189593

/-- `A026819(∑[A025249(n+1)])` -/
def P1036975935812404902.Spec : Prop :=
  ∀ n, P1036975935812404902.a n = A189593 (n + 1)

end A189593

/-!
# A189594: Number of permutations of 1..n with displacements restricted to {-6,-5,-4,-3,-1,0,2}.

The programs for A189594, there is no canonical definition to state claims against.
-/

/-! ## A189594.P15820537672740673192

`A396955(2^n)+n+1`
-/

namespace A189594.P15820537672740673192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396955 (2 ^ n) + (n + 1 : ℤ)

end

end A189594.P15820537672740673192

/-! ## A189594.P9155363870537730463

`A111654(A150529(n))`
-/

namespace A189594.P9155363870537730463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A150529 n).toNat

end

end A189594.P9155363870537730463

/-! ## A189594.P5440588291017103967

`A111654(A150552(n))`
-/

namespace A189594.P5440588291017103967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A150552 n).toNat

end

end A189594.P5440588291017103967

/-! ## A189594.P2700205720137833775

`A111654(A150554(n))`
-/

namespace A189594.P2700205720137833775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A150554 n).toNat

end

end A189594.P2700205720137833775

/-!
# A189596: Number of permutations of 1..n with displacements restricted to {-6,-5,-4,-2,-1,0,3}.

The programs for A189596, there is no canonical definition to state claims against.
-/

/-! ## A189596.P13183907146252960888

`A077070(A038119(n+1))`
-/

namespace A189596.P13183907146252960888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A038119 (n + 1)).toNat

end

end A189596.P13183907146252960888

/-! ## A189596.P2270615040940177606

`A077070(A052745(n)+A000377(n))`
-/

namespace A189596.P2270615040940177606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A052745 n + A000377 n).toNat

end

end A189596.P2270615040940177606

/-! ## A189596.P9940286369584890883

`A077070(A088431(n+1)+A052745(n))`
-/

namespace A189596.P9940286369584890883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A088431 (n + 1) + A052745 n).toNat

end

end A189596.P9940286369584890883

/-! ## A189596.P1264883615086504639

`A077070(A143773(n+1)+A052745(n))`
-/

namespace A189596.P1264883615086504639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A143773 (n + 1) + A052745 n).toNat

end

end A189596.P1264883615086504639

/-!
# A189597: Number of permutations of 1..n with displacements restricted to {-6,-5,-4,-2,0,1,3}.

The programs for A189597, there is no canonical definition to state claims against.
-/

/-! ## A189597.P411977608985785900

`round(sqrt(A008438(C(n, 2)/2*n!)))`
-/

namespace A189597.P411977608985785900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008438 (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ))).toNat : ℝ))

end

end A189597.P411977608985785900

/-! ## A189597.P16894068821066562743

`A304708(Δ[n*ceil(n²/2)]-(n²-1)%Δ[n²])`
-/

namespace A189597.P16894068821066562743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n ^ 2 : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (f1 (n + 1) - f1 n - Int.tmod ((n ^ 2 : ℤ) - 1) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A189597.P16894068821066562743

/-! ## A189597.P9788860908380244446

`A096603(A148041(n))`
-/

namespace A189597.P9788860908380244446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (A148041 n).toNat

end

end A189597.P9788860908380244446

/-!
# A189598: Number of permutations of 1..n with displacements restricted to {-6,-5,-4,-1,0,2,3}.

The programs for A189598, there is no canonical definition to state claims against.
-/

/-! ## A189598.P616639326712337051

`A008480(record[A243657(n)])`
-/

namespace A189598.P616639326712337051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189598.P616639326712337051

/-! ## A189598.P12949266205765448495

`A003056(A232552(n)+1)`
-/

namespace A189598.P12949266205765448495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A232552 n + 1).toNat

end

end A189598.P12949266205765448495

/-! ## A189598.P8756713290587488107

`A003986(A232552(n)+1)`
-/

namespace A189598.P8756713290587488107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A232552 n + 1).toNat

end

end A189598.P8756713290587488107

/-!
# A189599: Number of permutations of 1..n with displacements restricted to {-6,-5,-4,0,1,2,3}.

The programs for A189599, there is no canonical definition to state claims against.
-/

/-! ## A189599.P768648359962173565

`A165412(n²+1)-n²`
-/

namespace A189599.P768648359962173565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n ^ 2 + 1) - (n ^ 2 : ℤ)

end

end A189599.P768648359962173565

/-! ## A189599.P8949964228186224202

`A291791(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A189599.P8949964228186224202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A291791 (2 * a (n - 1)).toNat

end

end A189599.P8949964228186224202

/-! ## A189599.P17567671602996815256

`A029900(A217482(n))`
-/

namespace A189599.P17567671602996815256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029900 (A217482 n).toNat

end

end A189599.P17567671602996815256

