import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

/-!
# A357701: Irregular triangle read by rows where row n is the vertex depths of the rooted binary tree with Colijn-Plazzotta tree number n, traversed in pre-order, numerically larger child first.

The programs for A357701, there is no canonical definition to state claims against.
-/

/-! ## A357701.P2202788086664682596

`A353849(A053186(n)*A119269(3*n+5))`
-/

namespace A357701.P2202788086664682596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A053186 n * A119269 (3 * n + 5)).toNat

end

end A357701.P2202788086664682596

/-! ## A357701.P16411485241410384697

`A056169(A135880(n)+A038505(n))`
-/

namespace A357701.P16411485241410384697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A135880 n + A038505 n).toNat

end

end A357701.P16411485241410384697

/-! ## A357701.P8703098244045065594

`A000120(and(A004526(n), A309289(n+1)))`
-/

namespace A357701.P8703098244045065594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A004526 n) (A309289 (n + 1))).toNat

end

end A357701.P8703098244045065594

/-! ## A357701.P7763828794711248274

`A032352(A216835(n+4))%A328204(n+1)`
-/

namespace A357701.P7763828794711248274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032352 (A216835 (n + 4)).toNat) (A328204 (n + 1))

end

end A357701.P7763828794711248274

/-! ## A357701.P4548134253557014985

`A337475(A184618(2*n+5)%A337476(3*(n+1)))`
-/

namespace A357701.P4548134253557014985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337475 (Int.tmod (A184618 (2 * n + 5)) (A337476 (3 * (n + 1)))).toNat

end

end A357701.P4548134253557014985

/-!
# A357703: Expansion of e.g.f. cosh( sqrt(3) * log(1-x) ).

The programs for A357703, the canonical program `A357703.P14349978919641015204` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357703 has offset 0).

The definition of A357703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357703.P14349978919641015204

`(2*n-3)*a(n-1)-(n²-4*n+1)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357703

/-- `(2*n-3)*a(n-1)-(n²-4*n+1)*a(n-2)` -/
def P14349978919641015204.Spec : Prop :=
  ∀ n, P14349978919641015204.a n = A357703 n

theorem P14349978919641015204.correct : P14349978919641015204.Spec := by
  intro n
  simp only [A357703]

end A357703

/-! ## A357703.P3196680456055935035

`A357712(A046691(n+2))`
-/

namespace A357703.P3196680456055935035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357712 (A046691 (n + 2)).toNat

end

end A357703.P3196680456055935035

namespace A357703

/-- `A357712(A046691(n+2))` -/
def P3196680456055935035.Spec : Prop :=
  ∀ n, P3196680456055935035.a n = A357703 n

end A357703

/-! ## A357703.P7178620837491014076

`A357712(A155212(n)+4)`
-/

namespace A357703.P7178620837491014076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357712 (A155212 n + 4).toNat

end

end A357703.P7178620837491014076

namespace A357703

/-- `A357712(A155212(n)+4)` -/
def P7178620837491014076.Spec : Prop :=
  ∀ n, P7178620837491014076.a n = A357703 n

end A357703

/-! ## A357703.P5277685698708480353

`A357712(A056000(n)+6)`
-/

namespace A357703.P5277685698708480353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357712 (A056000 n + 6).toNat

end

end A357703.P5277685698708480353

namespace A357703

/-- `A357712(A056000(n)+6)` -/
def P5277685698708480353.Spec : Prop :=
  ∀ n, P5277685698708480353.a n = A357703 n

end A357703

/-! ## A357703.P6633139856635560861

`A357712(eq[3, A025581(n)])`
-/

namespace A357703.P6633139856635560861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357703.P6633139856635560861

namespace A357703

/-- `A357712(eq[3, A025581(n)])` -/
def P6633139856635560861.Spec : Prop :=
  ∀ n, P6633139856635560861.a n = A357703 n

end A357703

/-!
# A357704: Triangle read by rows where T(n,k) is the number of reversed integer partitions of n with half-alternating sum k, where k ranges from -n to n in steps of 2.

The programs for A357704, there is no canonical definition to state claims against.
-/

/-! ## A357704.P11142558932475184903

`A384890(A068934(n+1)*A255445(n))`
-/

namespace A357704.P11142558932475184903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (A068934 (n + 1) * A255445 n).toNat

end

end A357704.P11142558932475184903

/-! ## A357704.P4898112115278081272

`A384890(lcm(A068934(n+1), A255445(n)))`
-/

namespace A357704.P4898112115278081272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (Int.lcm (A068934 (n + 1)) (A255445 n))

end

end A357704.P4898112115278081272

/-! ## A357704.P4818885811273890934

`A068934(n+1)*A069288(A191926(3*(n+1)))`
-/

namespace A357704.P4818885811273890934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (n + 1) * A069288 (A191926 (3 * (n + 1))).toNat

end

end A357704.P4818885811273890934

/-! ## A357704.P1706454418131823872

`A350833(A111980(n+1)^A068934(n+1))`
-/

namespace A357704.P1706454418131823872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350833 (SequenceMachineLib.roundAway ((A111980 (n + 1) : ℚ) ^ (A068934 (n + 1) : ℤ))).toNat

end

end A357704.P1706454418131823872

/-! ## A357704.P8864235255020026290

`A173920(A077318(n+2)^A068934(n+1))`
-/

namespace A357704.P8864235255020026290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (SequenceMachineLib.roundAway ((A077318 (n + 2) : ℚ) ^ (A068934 (n + 1) : ℤ))).toNat

end

end A357704.P8864235255020026290

/-!
# A357705: Triangle read by rows where T(n,k) is the number of reversed integer partitions of n with skew-alternating sum k, where k ranges from -n to n in steps of 2.

The programs for A357705, there is no canonical definition to state claims against.
-/

/-! ## A357705.P9007296391566082370

`A307193(A242447(n)^3)`
-/

namespace A357705.P9007296391566082370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 (A242447 n ^ 3).toNat

end

end A357705.P9007296391566082370

/-! ## A357705.P6873317458879194945

`A307193(A242447(n)²*A242447(n))`
-/

namespace A357705.P6873317458879194945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 (A242447 n ^ 2 * A242447 n).toNat

end

end A357705.P6873317458879194945

/-! ## A357705.P576363898461479657

`A293435(A242447(n)^A163400(n+1)+1)`
-/

namespace A357705.P576363898461479657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (SequenceMachineLib.roundAway ((A242447 n : ℚ) ^ (A163400 (n + 1) : ℤ) + 1)).toNat

end

end A357705.P576363898461479657

/-! ## A357705.P6796865553444627826

`A002852(A238342(n)^A305962(n))`
-/

namespace A357705.P6796865553444627826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (SequenceMachineLib.roundAway ((A238342 n : ℚ) ^ (A305962 n : ℤ))).toNat

end

end A357705.P6796865553444627826

/-! ## A357705.P14776929742647529038

`A231717(A242447(n)^A276890(n))`
-/

namespace A357705.P14776929742647529038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231717 (SequenceMachineLib.roundAway ((A242447 n : ℚ) ^ (A276890 n : ℤ))).toNat

end

end A357705.P14776929742647529038

/-!
# A357706: Numbers k such that the k-th composition in standard order has half-alternating sum and skew-alternating sum both 0.

The programs for A357706, there is no canonical definition to state claims against.
-/

/-! ## A357706.P1728605047182215777

`∩[A357625(n+1), A357627(n+1)]`
-/

namespace A357706.P1728605047182215777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357706.P1728605047182215777

/-! ## A357706.P1731944074683137542

`∩[A357626(n+1), A357628(n+1)]`
-/

namespace A357706.P1731944074683137542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357706.P1731944074683137542

/-!
# A357708: Numbers k such that the k-th composition in standard order has sum equal to twice its maximum part.

The programs for A357708, there is no canonical definition to state claims against.
-/

/-! ## A357708.P16766223626037124966

`eq[2*A333766(n), A070939(n)]`
-/

namespace A357708.P16766223626037124966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357708.P16766223626037124966

/-! ## A357708.P16314929111020724103

`eq[A014682(A070939(n)), A333766(n)]`
-/

namespace A357708.P16314929111020724103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357708.P16314929111020724103

/-! ## A357708.P16859520181924889581

`∩[A096304(n+1), A372120(n+1)]`
-/

namespace A357708.P16859520181924889581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357708.P16859520181924889581

/-! ## A357708.P4056182172305127401

`eq[A010815(n), A055599(A195925(n+1))]`
-/

namespace A357708.P4056182172305127401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055599 (A195925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357708.P4056182172305127401

/-!
# A357711: Expansion of e.g.f. cosh( 2 * log(1-x) ).

The programs for A357711, the canonical program `A357711.P3799874942826168360` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357711 has offset 0).

The definition of A357711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357711.P3799874942826168360

`(2*n-3)*a(n-1)-(n²-4*n)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357711

/-- `(2*n-3)*a(n-1)-(n²-4*n)*a(n-2)` -/
def P3799874942826168360.Spec : Prop :=
  ∀ n, P3799874942826168360.a n = A357711 n

theorem P3799874942826168360.correct : P3799874942826168360.Spec := by
  intro n
  simp only [A357711]

end A357711

/-! ## A357711.P6798564689665711245

`(n+1)*a(n-1)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=12`
-/

namespace A357711.P6798564689665711245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4, 12] fun n a =>
  (n + 1) * a (n - 1)

end

end A357711.P6798564689665711245

namespace A357711

/-- `(n+1)*a(n-1)` -/
def P6798564689665711245.Spec : Prop :=
  ∀ n, (P6798564689665711245.a n : ℤ) = A357711 n

end A357711

/-! ## A357711.P799231677178179247

`Δ[A014288(n-char[2])]`
-/

namespace A357711.P799231677178179247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357711.P799231677178179247

namespace A357711

/-- `Δ[A014288(n-char[2])]` -/
def P799231677178179247.Spec : Prop :=
  ∀ n, P799231677178179247.a n = A357711 n

end A357711

/-! ## A357711.P4224202133948565330

`Δ[A093468(A266678(n)+n)]`
-/

namespace A357711.P4224202133948565330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093468 (A266678 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357711.P4224202133948565330

namespace A357711

/-- `Δ[A093468(A266678(n)+n)]` -/
def P4224202133948565330.Spec : Prop :=
  ∀ n, P4224202133948565330.a n = A357711 n

end A357711

/-! ## A357711.P13881262794924493021

`a(n-1)*A131209(n)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A357711.P13881262794924493021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) * A131209 n

end

end A357711.P13881262794924493021

namespace A357711

/-- `a(n-1)*A131209(n)` -/
def P13881262794924493021.Spec : Prop :=
  ∀ n, P13881262794924493021.a n = A357711 n

end A357711

/-!
# A357712: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. cosh( sqrt(k) * log(1-x) ).

The programs for A357712, there is no canonical definition to state claims against.
-/

/-! ## A357712.P8161810600367234794

`A126890(A357681(n)%A101641(2*(n+1)))`
-/

namespace A357712.P8161810600367234794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 (Int.tmod (A357681 n) (A101641 (2 * (n + 1)))).toNat

end

end A357712.P8161810600367234794

/-! ## A357712.P18086681802647073321

`A126890(A357681(n)%A219049(n+1))`
-/

namespace A357712.P18086681802647073321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 (Int.tmod (A357681 n) (A219049 (n + 1))).toNat

end

end A357712.P18086681802647073321

/-!
# A357713: a(0) = 2; afterwards a(n) is the least prime greater than a(n-1) such that Omega(a(n-1) + a(n)) = n.

The programs for A357713, there is no canonical definition to state claims against.
-/

/-! ## A357713.P1552530940537742566

`p?[∑[A053188(A000045(n))]]`
-/

namespace A357713.P1552530940537742566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000045 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357713.P1552530940537742566

/-! ## A357713.P11242653578514867375

`p?[∑[A053188(A212804(n))]]`
-/

namespace A357713.P11242653578514867375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A212804 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357713.P11242653578514867375

/-! ## A357713.P1694547786549858433

`A052085(A084193(C(n+2, 3)))`
-/

namespace A357713.P1694547786549858433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (A084193 (Nat.choose (n + 2) 3)).toNat

end

end A357713.P1694547786549858433

/-!
# A357714: a(n) is the number of equations in the set E_{n,b} := {x+2^b*y=n^b, 2^b*x+3^b*y=n^b, ..., k^b*x+(k+1)^b*y=n^b, ..., n^b*x+(n+1)^b*y=n^b} which admit at least one nonnegative integer solution when b is sufficiently large.

The programs for A357714, there is no canonical definition to state claims against.
-/

/-! ## A357714.P6030921777822916183

`∏{e}[n+1, #+1]+round(sqrt(n+1))-1`
-/

namespace A357714.P6030921777822916183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

end

end A357714.P6030921777822916183

/-! ## A357714.P15099569456301044867

`∑{d}[n+1, gcd(n, #)]+round(sqrt(n+1))-1`
-/

namespace A357714.P15099569456301044867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

end

end A357714.P15099569456301044867

/-! ## A357714.P4728937445257295582

`∏{e}[n+1, #+1]+comp[n²]-(n+2)`
-/

namespace A357714.P4728937445257295582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n + 2 : ℤ)

end

end A357714.P4728937445257295582

/-! ## A357714.P16731501709316846811

`comp[n²-1]-(n-∑{d}[n+1, n²%#])`
-/

namespace A357714.P16731501709316846811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ((n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d : ℕ) : ℤ))

end

end A357714.P16731501709316846811

/-! ## A357714.P15688459327040005055

`2^∑{e}[n+1, log2(#+1)]+round(sqrt(n+1))-1`
-/

namespace A357714.P15688459327040005055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1 : ℝ)

end

end A357714.P15688459327040005055

/-! ## A357714.P12747695292923625651

`∏{p}[n+1, val(n+1, #)+1]+round(sqrt(n+1))-1`
-/

namespace A357714.P12747695292923625651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 1) : ℕ) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

end

end A357714.P12747695292923625651

/-! ## A357714.P9470393227869882049

`∑{d}[n+1, lcm(#, n+1)]/(n+1)+round(sqrt(n+1))-1`
-/

namespace A357714.P9470393227869882049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1 : ℚ)

end

end A357714.P9470393227869882049

/-! ## A357714.P11368292024077994708

`A032741(n+1)+round(sqrt(n+1))`
-/

namespace A357714.P11368292024077994708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

end

end A357714.P11368292024077994708

/-! ## A357714.P17623246268059824621

`comp[n²]-(A049820(n+1)+1)`
-/

namespace A357714.P17623246268059824621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (A049820 (n + 1) + 1)

end

end A357714.P17623246268059824621

/-! ## A357714.P13803179184462615650

`round(sqrt(n+1))+A000005(n+1)-1`
-/

namespace A357714.P13803179184462615650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) + (A000005 (n + 1) - 1)

end

end A357714.P13803179184462615650

/-!
# A357716: Number of ways to write n as an ordered sum of eight positive Fibonacci numbers (with a single type of 1).

The programs for A357716, there is no canonical definition to state claims against.
-/

/-! ## A357716.P6875154880239098107

`A121548(A055999(n+5)-n+6)`
-/

namespace A357716.P6875154880239098107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A055999 (n + 5) - (n : ℤ) + 6).toNat

end

end A357716.P6875154880239098107

/-! ## A357716.P12147400083907680479

`A121548(eq[7, A002262(n)]+1)`
-/

namespace A357716.P12147400083907680479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A357716.P12147400083907680479

/-! ## A357716.P12680563884130085923

`A341987(n+8)-A167637(A000625(n))`
-/

namespace A357716.P12680563884130085923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341987 (n + 8) - A167637 (A000625 n).toNat

end

end A357716.P12680563884130085923

/-!
# A357717: Number of ways to write n as an ordered sum of nine positive Fibonacci numbers (with a single type of 1).

The programs for A357717, there is no canonical definition to state claims against.
-/

/-! ## A357717.P5873934895065693248

`A121548(eq[10, A131818(n+1)])`
-/

namespace A357717.P5873934895065693248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357717.P5873934895065693248

/-! ## A357717.P3572035452450799192

`A341988(n+9)-A067169(A262012(n))`
-/

namespace A357717.P3572035452450799192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341988 (n + 9) - A067169 ((A262012 n).toNat + 11)

end

end A357717.P3572035452450799192

/-! ## A357717.P5279248267230022412

`A341988(n+9)-A341981(A341704(n))`
-/

namespace A357717.P5279248267230022412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341988 (n + 9) - A341981 ((A341704 n).toNat + 101)

end

end A357717.P5279248267230022412

/-!
# A357718: Expansion of e.g.f. cos( sqrt(3) * log(1+x) ).

The programs for A357718, there is no canonical definition to state claims against.
-/

/-! ## A357718.P1892214586189769563

`A357720(A046691(n+2))`
-/

namespace A357718.P1892214586189769563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A046691 (n + 2)).toNat

end

end A357718.P1892214586189769563

/-! ## A357718.P270255683356802942

`A357720(A155212(n)+4)`
-/

namespace A357718.P270255683356802942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A155212 n + 4).toNat

end

end A357718.P270255683356802942

/-! ## A357718.P6351145366413584466

`A357720(A056000(n)+6)`
-/

namespace A357718.P6351145366413584466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A056000 n + 6).toNat

end

end A357718.P6351145366413584466

/-! ## A357718.P18421543390673638471

`A357720(eq[3, A025581(n)])`
-/

namespace A357718.P18421543390673638471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357718.P18421543390673638471

/-! ## A357718.P10049648554937930479

`A357720(A052905(n+1)+1)`
-/

namespace A357718.P10049648554937930479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A052905 (n + 1) + 1).toNat

end

end A357718.P10049648554937930479

/-!
# A357719: Expansion of e.g.f. cos( 2 * log(1+x) ).

The programs for A357719, there is no canonical definition to state claims against.
-/

/-! ## A357719.P5150176067219580674

`A357720(∑[n+5]+5)`
-/

namespace A357719.P5150176067219580674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A357719.P5150176067219580674

/-!
# A357720: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. cos( sqrt(k) * log(1+x) ).

The programs for A357720, there is no canonical definition to state claims against.
-/

/-! ## A357720.P14610127252100987119

`A256175(A006906(n))*A357728(n)`
-/

namespace A357720.P14610127252100987119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256175 (A006906 n).toNat * A357728 n

end

end A357720.P14610127252100987119

/-! ## A357720.P6091102750870321099

`A345008(A002601(n+1))`
-/

namespace A357720.P6091102750870321099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345008 (A002601 (n + 1)).toNat

end

end A357720.P6091102750870321099

/-! ## A357720.P6154456085439716150

`A358401(A193710(n+1))`
-/

namespace A357720.P6154456085439716150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358401 (A193710 (n + 1)).toNat

end

end A357720.P6154456085439716150

/-! ## A357720.P8731441216842781568

`A305052(A369595(n))+1`
-/

namespace A357720.P8731441216842781568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A369595 n).toNat + 1

end

end A357720.P8731441216842781568

/-! ## A357720.P5500885056274146298

`∏{e}[A000244(n), A357728(#)]`
-/

namespace A357720.P5500885056274146298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A357728 (Nat.factorization (f1 n).natAbs p)

end

end A357720.P5500885056274146298

/-!
# A357721: a(n) = Sum_{k=0..floor(n/2)} (-n)^k * Stirling1(n,2*k).

The programs for A357721, there is no canonical definition to state claims against.
-/

/-! ## A357721.P8310465511563850305

`A357720(∑[4*n])`
-/

namespace A357721.P8310465511563850305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357721.P8310465511563850305

/-! ## A357721.P7017184628519380997

`A357720(A046092(n))+A000007(2*n+1)`
-/

namespace A357721.P7017184628519380997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (A046092 n).toNat + A000007 (2 * n + 1)

end

end A357721.P7017184628519380997

/-!
# A357722: Number of partitions of n into 4 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A357722, there is no canonical definition to state claims against.
-/

/-! ## A357722.P9402776300454411730

`A327144(A014963(3*n+5)+1)`
-/

namespace A357722.P9402776300454411730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A014963 (3 * n + 5) + 1).toNat

end

end A357722.P9402776300454411730

/-! ## A357722.P12886794496550740766

`A327144(A120007(3*n+5)+1)`
-/

namespace A357722.P12886794496550740766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A120007 (3 * n + 5) + 1).toNat

end

end A357722.P12886794496550740766

/-! ## A357722.P5128262088753024541

`A327144(A287521(n+3)-1)`
-/

namespace A357722.P5128262088753024541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A287521 (n + 3) - 1).toNat

end

end A357722.P5128262088753024541

/-! ## A357722.P14768147835096600452

`A327144(A344609(n+1)+A243069(3*n+5))`
-/

namespace A357722.P14768147835096600452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A344609 (n + 1) + A243069 (3 * n + 5)).toNat

end

end A357722.P14768147835096600452

/-! ## A357722.P8703577719493898693

`A327144(A367917(n+1)+A294675(n+1))`
-/

namespace A357722.P8703577719493898693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A367917 (n + 1) + A294675 (n + 1)).toNat

end

end A357722.P8703577719493898693

/-!
# A357723: Number of ways to place a non-attacking black king and white king on an n X n board, up to rotation and reflection.

The programs for A357723, the canonical program `A357723.P3467441359848684854` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357723 has offset 0).

The definition of A357723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357723.P3467441359848684854

`(n-2)*(n-1)*((n+3)*n+2*n%2)/8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357723

/-- `(n-2)*(n-1)*((n+3)*n+2*n%2)/8` -/
def P3467441359848684854.Spec : Prop :=
  ∀ n, P3467441359848684854.a n = (A357723 n : ℚ)

end A357723

/-! ## A357723.P12592920737822729564

`A193814(A000225(n))/2`
-/

namespace A357723.P12592920737822729564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193814 (A000225 n).toNat : ℚ) / 2

end

end A357723.P12592920737822729564

namespace A357723

/-- `A193814(A000225(n))/2` -/
def P12592920737822729564.Spec : Prop :=
  ∀ n, P12592920737822729564.a n = (A357723 n : ℚ)

end A357723

/-! ## A357723.P7716417856724993476

`A006995(n+1)*A178696(A000079(n))`
-/

namespace A357723.P7716417856724993476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1) * A178696 (A000079 n).toNat

end

end A357723.P7716417856724993476

namespace A357723

/-- `A006995(n+1)*A178696(A000079(n))` -/
def P7716417856724993476.Spec : Prop :=
  ∀ n, P7716417856724993476.a n = A357723 n

end A357723

/-!
# A357724: Triangular array read by rows: T(n,k) = Fib(n) mod Fib(k) for 1 <= k <= n, where Fib(k) = A000045(k).

The programs for A357724, the canonical program `A357724.P11815462529131865667` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357724 has offset 1).

The definition of A357724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357724.P11815462529131865667

`A098356(n)%A104763(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A357724

/-- `A098356(n)%A104763(n+1)` -/
def P11815462529131865667.Spec : Prop :=
  ∀ n, P11815462529131865667.a n = A357724 (n + 1)

theorem P11815462529131865667.correct : P11815462529131865667.Spec := by
  intro n
  simp only [A357724, Nat.add_sub_cancel]

end A357724

/-! ## A357724.P9239267274680542942

`A131410(n+1)%A104763(n+1)`
-/

namespace A357724.P9239267274680542942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131410 (n + 1)) (A104763 (n + 1))

end

end A357724.P9239267274680542942

namespace A357724

/-- `A131410(n+1)%A104763(n+1)` -/
def P9239267274680542942.Spec : Prop :=
  ∀ n, P9239267274680542942.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P18197831801737690776

`A016095(A057944(n))%A104763(n+1)`
-/

namespace A357724.P18197831801737690776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016095 (A057944 n).toNat) (A104763 (n + 1))

end

end A357724.P18197831801737690776

namespace A357724

/-- `A016095(A057944(n))%A104763(n+1)` -/
def P18197831801737690776.Spec : Prop :=
  ∀ n, P18197831801737690776.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P15601488478756357163

`A000045(A002024(n+1))%A104763(n+1)`
-/

namespace A357724.P15601488478756357163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A002024 (n + 1)).toNat) (A104763 (n + 1))

end

end A357724.P15601488478756357163

namespace A357724

/-- `A000045(A002024(n+1))%A104763(n+1)` -/
def P15601488478756357163.Spec : Prop :=
  ∀ n, P15601488478756357163.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P150979739851672076

`A212804(A003057(n+2))%A104763(n+1)`
-/

namespace A357724.P150979739851672076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (A003057 (n + 2)).toNat) (A104763 (n + 1))

end

end A357724.P150979739851672076

namespace A357724

/-- `A212804(A003057(n+2))%A104763(n+1)` -/
def P150979739851672076.Spec : Prop :=
  ∀ n, P150979739851672076.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P560244635877077541

`(A039913(n)-A108037(n))%A104763(n+1)`
-/

namespace A357724.P560244635877077541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039913 n - A108037 n) (A104763 (n + 1))

end

end A357724.P560244635877077541

namespace A357724

/-- `(A039913(n)-A108037(n))%A104763(n+1)` -/
def P560244635877077541.Spec : Prop :=
  ∀ n, P560244635877077541.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P6318879367867877240

`(A108038(n)-A039913(n))%A104763(n+1)`
-/

namespace A357724.P6318879367867877240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108038 n - A039913 n) (A104763 (n + 1))

end

end A357724.P6318879367867877240

namespace A357724

/-- `(A108038(n)-A039913(n))%A104763(n+1)` -/
def P6318879367867877240.Spec : Prop :=
  ∀ n, P6318879367867877240.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P5981822623567258126

`((A094570(n)-A141169(n))*A141169(n))%A104763(n+1)`
-/

namespace A357724.P5981822623567258126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A094570 n - A141169 n) * A141169 n) (A104763 (n + 1))

end

end A357724.P5981822623567258126

namespace A357724

/-- `((A094570(n)-A141169(n))*A141169(n))%A104763(n+1)` -/
def P5981822623567258126.Spec : Prop :=
  ∀ n, P5981822623567258126.a n = A357724 (n + 1)

end A357724

/-! ## A357724.P15937591190843300684

`A271315(n)%A104763(n+1)`
-/

namespace A357724.P15937591190843300684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271315 n) (A104763 (n + 1))

end

end A357724.P15937591190843300684

namespace A357724

/-- `A271315(n)%A104763(n+1)` -/
def P15937591190843300684.Spec : Prop :=
  ∀ n, P15937591190843300684.a n = A357724 (n + 1)

end A357724

/-!
# A357725: Expansion of e.g.f. cos( sqrt(2) * (exp(x) - 1) ).

The programs for A357725, there is no canonical definition to state claims against.
-/

/-! ## A357725.P14569909724666264147

`A357728(∑[n+3])`
-/

namespace A357725.P14569909724666264147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357725.P14569909724666264147

/-! ## A357725.P14331382282953348857

`A354201(A152827(n))-A034017(n+1)`
-/

namespace A357725.P14331382282953348857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354201 (A152827 n).toNat - A034017 (n + 1)

end

end A357725.P14331382282953348857

/-!
# A357726: Expansion of e.g.f. cos( sqrt(3) * (exp(x) - 1) ).

The programs for A357726, there is no canonical definition to state claims against.
-/

/-! ## A357726.P17042078578399238830

`A357728(∑[n+4]+2)`
-/

namespace A357726.P17042078578399238830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A357726.P17042078578399238830

/-!
# A357727: Expansion of e.g.f. cos( 2 * (exp(x) - 1) ).

The programs for A357727, there is no canonical definition to state claims against.
-/

/-! ## A357727.P15658144024598782853

`A357728(A052905(n+2))`
-/

namespace A357727.P15658144024598782853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A052905 (n + 2)).toNat

end

end A357727.P15658144024598782853

/-! ## A357727.P15150375601147082740

`A357728(A056115(n)+10)`
-/

namespace A357727.P15150375601147082740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A056115 n + 10).toNat

end

end A357727.P15150375601147082740

/-! ## A357727.P7353807813594282470

`A357728(eq[4, A025581(n)])`
-/

namespace A357727.P7353807813594282470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357727.P7353807813594282470

/-! ## A357727.P9968110600013843023

`A357728(A055999(n+2)+1)`
-/

namespace A357727.P9968110600013843023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A055999 (n + 2) + 1).toNat

end

end A357727.P9968110600013843023

/-! ## A357727.P9242087772666877726

`A357728(lt[A319375(n+5), A259361(n)])`
-/

namespace A357727.P9242087772666877726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319375 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357727.P9242087772666877726

/-!
# A357728: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. cos( sqrt(k) * (exp(x) - 1) ).

The programs for A357728, there is no canonical definition to state claims against.
-/

/-! ## A357728.P11582652481074359116

`1-A138033(A336575(n))`
-/

namespace A357728.P11582652481074359116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138033 (A336575 n).toNat

end

end A357728.P11582652481074359116

/-! ## A357728.P11825821270796543195

`1-A303838(A249026(n))`
-/

namespace A357728.P11825821270796543195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A303838 (A249026 n).toNat

end

end A357728.P11825821270796543195

/-! ## A357728.P17637307817007400978

`2-A140887(A355395(n)²)`
-/

namespace A357728.P17637307817007400978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A140887 (A355395 n ^ 2).toNat

end

end A357728.P17637307817007400978

/-! ## A357728.P17510452031781869415

`1-A001221(A355395(n)!)`
-/

namespace A357728.P17510452031781869415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001221 (Nat.factorial (A355395 n).toNat)

end

end A357728.P17510452031781869415

/-! ## A357728.P14868823094966981930

`A333768(A230076(n+1))-A323224(n)`
-/

namespace A357728.P14868823094966981930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A230076 (n + 1)).toNat - A323224 n

end

end A357728.P14868823094966981930

/-!
# A357729: a(n) = Sum_{k=0..floor(n/2)} (-n)^k * Stirling2(n,2*k).

The programs for A357729, there is no canonical definition to state claims against.
-/

/-! ## A357729.P5488272291635362338

`A357728(∑[4*n])`
-/

namespace A357729.P5488272291635362338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357729.P5488272291635362338

/-! ## A357729.P7401333893523406216

`A357728(A046092(n))+A000007(2*(n+2))`
-/

namespace A357729.P7401333893523406216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A046092 n).toNat + A000007 (2 * (n + 2))

end

end A357729.P7401333893523406216

/-!
# A357730: Number of ways to write n as an ordered sum of ten positive Fibonacci numbers (with a single type of 1).

The programs for A357730, there is no canonical definition to state claims against.
-/

/-! ## A357730.P6738859993191399452

`A121548(A000217(n+9)+10)`
-/

namespace A357730.P6738859993191399452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000217 (n + 9) + 10).toNat

end

end A357730.P6738859993191399452

/-! ## A357730.P14529314278980727593

`A121548(eq[11, A131818(n+1)])`
-/

namespace A357730.P14529314278980727593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357730.P14529314278980727593

/-!
# A357731: Number of partitions of n into 2 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A357731, the canonical program `A357731.P9040152959614539463` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357731 has offset 3).

The definition of A357731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357731.P1959800109654584457

`char[A094570(n)-3]`
-/

namespace A357731.P1959800109654584457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 n - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A357731.P1959800109654584457

namespace A357731

/-- `char[A094570(n)-3]` -/
def P1959800109654584457.Spec : Prop :=
  ∀ n, (P1959800109654584457.a n : ℤ) = A357731 (n + 3)

end A357731

/-! ## A357731.P5735786876150934084

`floor(sqrt(A319395(n+3)))`
-/

namespace A357731.P5735786876150934084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319395 (n + 3))

end

end A357731.P5735786876150934084

namespace A357731

/-- `floor(sqrt(A319395(n+3)))` -/
def P5735786876150934084.Spec : Prop :=
  ∀ n, P5735786876150934084.a n = A357731 (n + 3)

end A357731

/-! ## A357731.P12283661200659349664

`floor(sqrt(A359514(n+3)))`
-/

namespace A357731.P12283661200659349664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A359514 (n + 3))

end

end A357731.P12283661200659349664

namespace A357731

/-- `floor(sqrt(A359514(n+3)))` -/
def P12283661200659349664.Spec : Prop :=
  ∀ n, P12283661200659349664.a n = A357731 (n + 3)

end A357731

/-! ## A357731.P7004125148372005714

`char[A131411(n+1)-2]`
-/

namespace A357731.P7004125148372005714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A357731.P7004125148372005714

namespace A357731

/-- `char[A131411(n+1)-2]` -/
def P7004125148372005714.Spec : Prop :=
  ∀ n, (P7004125148372005714.a n : ℤ) = A357731 (n + 3)

end A357731

/-! ## A357731.P4103017550116556890

`A010056(A257962(n+1))`
-/

namespace A357731.P4103017550116556890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A257962 (n + 1)).toNat

end

end A357731.P4103017550116556890

namespace A357731

/-- `A010056(A257962(n+1))` -/
def P4103017550116556890.Spec : Prop :=
  ∀ n, P4103017550116556890.a n = A357731 (n + 3)

end A357731

/-! ## A357731.P9040152959614539463

`A010056(A194029(n+2))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A357731

/-- `A010056(A194029(n+2))` -/
def P9040152959614539463.Spec : Prop :=
  ∀ n, P9040152959614539463.a n = A357731 (n + 3)

theorem P9040152959614539463.correct : P9040152959614539463.Spec := by
  intro n
  simp only [A357731, Nat.add_sub_cancel]

end A357731

/-! ## A357731.P16267434673145041033

`floor(sqrt(A121549(n+3)))`
-/

namespace A357731.P16267434673145041033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A121549 (n + 3))

end

end A357731.P16267434673145041033

namespace A357731

/-- `floor(sqrt(A121549(n+3)))` -/
def P16267434673145041033.Spec : Prop :=
  ∀ n, P16267434673145041033.a n = A357731 (n + 3)

end A357731

/-! ## A357731.P14085336025994288831

`floor(sqrt(A359511(n+3)))`
-/

namespace A357731.P14085336025994288831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A359511 (n + 3))

end

end A357731.P14085336025994288831

namespace A357731

/-- `floor(sqrt(A359511(n+3)))` -/
def P14085336025994288831.Spec : Prop :=
  ∀ n, P14085336025994288831.a n = A357731 (n + 3)

end A357731

/-! ## A357731.P4181481755135844528

`floor(sqrt(A359537(n+3)))`
-/

namespace A357731.P4181481755135844528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A359537 (n + 3))

end

end A357731.P4181481755135844528

namespace A357731

/-- `floor(sqrt(A359537(n+3)))` -/
def P4181481755135844528.Spec : Prop :=
  ∀ n, P4181481755135844528.a n = A357731 (n + 3)

end A357731

/-! ## A357731.P4972908246402208243

`A010056(A194055(n+1))`
-/

namespace A357731.P4972908246402208243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A194055 (n + 1)).toNat

end

end A357731.P4972908246402208243

namespace A357731

/-- `A010056(A194055(n+1))` -/
def P4972908246402208243.Spec : Prop :=
  ∀ n, P4972908246402208243.a n = A357731 (n + 3)

end A357731

/-!
# A357732: Number of partitions of n into 3 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A357732, there is no canonical definition to state claims against.
-/

/-! ## A357732.P11237302595318092979

`A357722(A305849(n+2))`
-/

namespace A357732.P11237302595318092979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((A305849 (n + 2)).toNat + 11)

end

end A357732.P11237302595318092979

/-! ## A357732.P5345748984462034663

`A357722(A001950(n+1)+4)`
-/

namespace A357732.P5345748984462034663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((A001950 (n + 1) + 4).toNat + 11)

end

end A357732.P5345748984462034663

/-!
# A357734: Array T(n,k), read by descending antidiagonals, whose rows are numbers congruent to p or q mod r, with 0 <= p < q < r, sorted by r, then p, then q.

The programs for A357734, there is no canonical definition to state claims against.
-/

/-! ## A357734.P16190149086798228283

`A120325(A339888(n))+A025581(n)`
-/

namespace A357734.P16190149086798228283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A339888 n).toNat + A025581 n

end

end A357734.P16190149086798228283

/-! ## A357734.P6073138815344045068

`A004736(n+1)-A053865(A120144(n+1))`
-/

namespace A357734.P6073138815344045068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A053865 (A120144 (n + 1)).toNat

end

end A357734.P6073138815344045068

/-! ## A357734.P12416358763316588664

`A004736(n+1)-A359893(A049429(n+2))`
-/

namespace A357734.P12416358763316588664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A359893 (A049429 (n + 2)).toNat

end

end A357734.P12416358763316588664

/-! ## A357734.P13200442427909929825

`A004218(A127266(n)+A113384(n))`
-/

namespace A357734.P13200442427909929825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A127266 n + A113384 n).toNat

end

end A357734.P13200442427909929825

/-! ## A357734.P6473355552491648239

`A122204(n)+A082858(A363626(n))`
-/

namespace A357734.P6473355552491648239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 n + A082858 (A363626 n).toNat

end

end A357734.P6473355552491648239

/-!
# A357736: Expansion of e.g.f. sin( sqrt(2) * (exp(x) - 1) )/sqrt(2).

The programs for A357736, there is no canonical definition to state claims against.
-/

/-! ## A357736.P4912034325147715172

`A326966(n+1)-A326966(A381858(n))`
-/

namespace A357736.P4912034325147715172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326966 (n + 1) - A326966 (A381858 n).toNat

end

end A357736.P4912034325147715172

/-! ## A357736.P4913961106450259260

`A040976(n+1)-A003056(A073978(n+1))`
-/

namespace A357736.P4913961106450259260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A003056 (A073978 (n + 1)).toNat

end

end A357736.P4913961106450259260

/-! ## A357736.P514121749401558919

`A047222(n+1)-A353504(A323092(2*n+1))`
-/

namespace A357736.P514121749401558919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1) - A353504 (A323092 (2 * n + 1)).toNat

end

end A357736.P514121749401558919

/-!
# A357740: Number of non-equivalent ways under symmetry in one axis that 2 non-attacking kings of different colors can be placed on an n X n board.

The programs for A357740, the canonical program `A357740.P411081642526273223` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357740 has offset 1).

The definition of A357740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357740.P411081642526273223

`(A047241(n+1)+A002522(n+1))*C(n, 2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A357740

/-- `(A047241(n+1)+A002522(n+1))*C(n, 2)` -/
def P411081642526273223.Spec : Prop :=
  ∀ n, P411081642526273223.a n = A357740 (n + 1)

theorem P411081642526273223.correct : P411081642526273223.Spec := by
  intro n
  simp only [A357740, Nat.add_sub_cancel]

end A357740

/-! ## A357740.P14596438916878710615

`A031940((n+1)²)-A031940(3*n+1)`
-/

namespace A357740.P14596438916878710615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 ((n + 1) ^ 2) - A031940 (3 * n + 1)

end

end A357740.P14596438916878710615

namespace A357740

/-- `A031940((n+1)²)-A031940(3*n+1)` -/
def P14596438916878710615.Spec : Prop :=
  ∀ n, P14596438916878710615.a n = A357740 (n + 1)

end A357740

/-!
# A357741: Semiprimes k such that k is divisible by its index in the sequence of semiprimes.

The programs for A357741, there is no canonical definition to state claims against.
-/

/-! ## A357741.P6344172225441405144

`A106125(n+1)*A356764(n+1)`
-/

namespace A357741.P6344172225441405144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106125 (n + 1) * A356764 (n + 1)

end

end A357741.P6344172225441405144

/-! ## A357741.P17478991826896849380

`A001358(A106125(n+1))`
-/

namespace A357741.P17478991826896849380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106125 (n + 1)).toNat

end

end A357741.P17478991826896849380

/-! ## A357741.P3662974087501381042

`A001358(lt[A001358(n+1)%(n+1), 1]+1)`
-/

namespace A357741.P3662974087501381042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A357741.P3662974087501381042

/-!
# A357742: a(n) is the maximum binary weight of the squares of n-bit numbers.

The programs for A357742, there is no canonical definition to state claims against.
-/

/-! ## A357742.P7230342553460127737

`A133280(n)+A097331(A089408(n))`
-/

namespace A357742.P7230342553460127737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n + A097331 (A089408 n).toNat

end

end A357742.P7230342553460127737

/-! ## A357742.P6662102828800998958

`A090192(A089408(n))+A056847(2*n+1)`
-/

namespace A357742.P6662102828800998958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A089408 n).toNat + A056847 (2 * n + 1)

end

end A357742.P6662102828800998958

/-! ## A357742.P3157124998363255263

`A374519(A342515(n)+A044915(n+1))`
-/

namespace A357742.P3157124998363255263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (A342515 n + A044915 (n + 1)).toNat

end

end A357742.P3157124998363255263

/-! ## A357742.P17483418343911848673

`A189578(n+1)-A114643(A288363(n))`
-/

namespace A357742.P17483418343911848673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189578 (n + 1) - A114643 (A288363 n).toNat

end

end A357742.P17483418343911848673

/-! ## A357742.P485063763255749118

`A157202(n+1)+A030190(A157180(3*n))`
-/

namespace A357742.P485063763255749118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157202 (n + 1) + A030190 (A157180 (3 * n)).toNat

end

end A357742.P485063763255749118

/-!
# A357743: Square array A(n, k), n, k >= 0, read by antidiagonals: A(0, 0) = 0, A(0, 1) = A(1, 0) = 1, for n, k >= 0, A(2*n, 2*k) = A(n, k), A(2*n, 2*k+1) = A(n, k) + A(n, k+1), A(2*n+1, 2*k) = A(n, k) + A(n+1, k), A(2*n+1, 2*k+1) = A(n, k+1) + A(n+1, k).

The programs for A357743, there is no canonical definition to state claims against.
-/

/-! ## A357743.P4317202133953863332

`A002487(A330772(3*n+4)*A341520(n))`
-/

namespace A357743.P4317202133953863332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A330772 (3 * n + 4) * A341520 n).toNat

end

end A357743.P4317202133953863332

/-! ## A357743.P1770951024620882216

`∑{e}[A001047(A003991(n+1)), #]`
-/

namespace A357743.P1770951024620882216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A003991 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A357743.P1770951024620882216

/-! ## A357743.P5046036718605906101

`A358871(lcm(n, A171829(n+1)))`
-/

namespace A357743.P5046036718605906101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358871 (Int.lcm (n : ℤ) (A171829 (n + 1)))

end

end A357743.P5046036718605906101

/-! ## A357743.P6772704729057724159

`A358871(n)+A007814(A098547(n))`
-/

namespace A357743.P6772704729057724159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358871 n + A007814 (A098547 n).toNat

end

end A357743.P6772704729057724159

/-! ## A357743.P12931915682555243567

`A000120(A281385(n)%A385022(2*n+5))`
-/

namespace A357743.P12931915682555243567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A281385 n) (A385022 (2 * n + 5))).toNat

end

end A357743.P12931915682555243567

/-!
# A357745: Numbers on the 8 main spokes of a square spiral with 1 in the center.

The programs for A357745, the canonical program `A357745.P13794265600132348714` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357745 has offset 1).

The definition of A357745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357745.P13794265600132348714

`∑[ceil(n/8)]+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357745

/-- `∑[ceil(n/8)]+1` -/
def P13794265600132348714.Spec : Prop :=
  ∀ n, P13794265600132348714.a n = A357745 (n + 1)

theorem P13794265600132348714.correct : P13794265600132348714.Spec := by
  intro n
  simp only [A357745, Nat.add_sub_cancel]

end A357745

/-! ## A357745.P17644964840267458965

`ceil(a(n-1)+n/8)` with `a(0)=1`
-/

namespace A357745.P17644964840267458965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n : ℚ) / 8⌉

end

end A357745.P17644964840267458965

namespace A357745

/-- `ceil(a(n-1)+n/8)` -/
def P17644964840267458965.Spec : Prop :=
  ∀ n, P17644964840267458965.a n = A357745 (n + 1)

end A357745

/-! ## A357745.P10862530175799047591

`round(a(n-1)+(n+3)/8)` with `a(0)=1`
-/

namespace A357745.P10862530175799047591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n + 3 : ℚ) / 8)

end

end A357745.P10862530175799047591

namespace A357745

/-- `round(a(n-1)+(n+3)/8)` -/
def P10862530175799047591.Spec : Prop :=
  ∀ n, P10862530175799047591.a n = A357745 (n + 1)

end A357745

/-! ## A357745.P5070621250937233557

`floor(a(n-1)+(n+7)/8)` with `a(0)=1`
-/

namespace A357745.P5070621250937233557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n + 7 : ℚ) / 8⌋

end

end A357745.P5070621250937233557

namespace A357745

/-- `floor(a(n-1)+(n+7)/8)` -/
def P5070621250937233557.Spec : Prop :=
  ∀ n, P5070621250937233557.a n = A357745 (n + 1)

end A357745

/-! ## A357745.P1045223763882700956

`∑[∑[char[A168390(2*(n+1))]]+1]`
-/

namespace A357745.P1045223763882700956
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357745.P1045223763882700956

namespace A357745

/-- `∑[∑[char[A168390(2*(n+1))]]+1]` -/
def P1045223763882700956.Spec : Prop :=
  ∀ n, (P1045223763882700956.a n : ℤ) = A357745 (n + 1)

end A357745

/-! ## A357745.P9453346406724254100

`∑[∑[char[A008574(2*(n+1))+1]]+1]`
-/

namespace A357745.P9453346406724254100
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * (n + 1)) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357745.P9453346406724254100

namespace A357745

/-- `∑[∑[char[A008574(2*(n+1))+1]]+1]` -/
def P9453346406724254100.Spec : Prop :=
  ∀ n, (P9453346406724254100.a n : ℤ) = A357745 (n + 1)

end A357745

/-! ## A357745.P15077536492072535289

`∑[A008621(A065033(n)-1)]`
-/

namespace A357745.P15077536492072535289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A065033 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357745.P15077536492072535289

namespace A357745

/-- `∑[A008621(A065033(n)-1)]` -/
def P15077536492072535289.Spec : Prop :=
  ∀ n, P15077536492072535289.a n = A357745 (n + 1)

end A357745

/-! ## A357745.P6444824329819400485

`∪[A039823(n+1), A200975(n+1)]`
-/

namespace A357745.P6444824329819400485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357745.P6444824329819400485

namespace A357745

/-- `∪[A039823(n+1), A200975(n+1)]` -/
def P6444824329819400485.Spec : Prop :=
  ∀ n, (P6444824329819400485.a n : ℤ) = A357745 (n + 1)

end A357745

/-! ## A357745.P7184478354067886409

`A183222(a(n-1))` with `a(0)=1`
-/

namespace A357745.P7184478354067886409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183222 (a (n - 1)).toNat

end

end A357745.P7184478354067886409

namespace A357745

/-- `A183222(a(n-1))` -/
def P7184478354067886409.Spec : Prop :=
  ∀ n, P7184478354067886409.a n = A357745 (n + 1)

end A357745

/-! ## A357745.P5274692517645922093

`A065033(A129895(n+2))`
-/

namespace A357745.P5274692517645922093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A129895 (n + 2)).toNat

end

end A357745.P5274692517645922093

namespace A357745

/-- `A065033(A129895(n+2))` -/
def P5274692517645922093.Spec : Prop :=
  ∀ n, P5274692517645922093.a n = A357745 (n + 1)

end A357745

/-! ## A357745.P13347399229547711240

`A004526(A129895(n+2)+1)`
-/

namespace A357745.P13347399229547711240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A129895 (n + 2) + 1).toNat

end

end A357745.P13347399229547711240

namespace A357745

/-- `A004526(A129895(n+2)+1)` -/
def P13347399229547711240.Spec : Prop :=
  ∀ n, P13347399229547711240.a n = A357745 (n + 1)

end A357745

/-!
# A357746: Primes p such that the least k for which k*p + 1 is prime is also the least k for which k*p - 1 is prime.

The programs for A357746, there is no canonical definition to state claims against.
-/

/-! ## A357746.P17331630853533250931

`A060212(lt[A098175(n+5), A202069(n+3)]+1)`
-/

namespace A357746.P17331630853533250931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098175 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202069 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A357746.P17331630853533250931

/-!
# A357749: Sorted list of nonzero numbers x, y, z that occur in solutions to the equation (x + y)^2 + (y + z)^2 + (z + x)^2 = 12*x*y*z.

The programs for A357749, there is no canonical definition to state claims against.
-/

/-! ## A357749.P18321219616429485964

`record[A351372(n+1)]`
-/

namespace A357749.P18321219616429485964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357749.P18321219616429485964

/-! ## A357749.P10524192905379629530

`A351372(3*(n+1))`
-/

namespace A357749.P10524192905379629530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351372 (3 * (n + 1))

end

end A357749.P10524192905379629530

/-!
# A357751: a(n) is the least perfect power > 2^n.

The programs for A357751, there is no canonical definition to state claims against.
-/

/-! ## A357751.P838571282330049834

`A001597(A070228(n)+1)`
-/

namespace A357751.P838571282330049834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A070228 n + 1).toNat

end

end A357751.P838571282330049834

/-! ## A357751.P797478798242317685

`A001597(A188951(n)+1-char[1]-A057428(n+1))`
-/

namespace A357751.P797478798242317685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A188951 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - A057428 (n + 1)).toNat

end

end A357751.P797478798242317685

/-! ## A357751.P15260052324352565758

`A001597(A076411(2^n+1)+1)`
-/

namespace A357751.P15260052324352565758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A076411 (2 ^ n + 1) + 1).toNat

end

end A357751.P15260052324352565758

/-! ## A357751.P18209817276412855026

`A074984(A000051(n))+A000051(n)`
-/

namespace A357751.P18209817276412855026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A000051 n).toNat + A000051 n

end

end A357751.P18209817276412855026

/-! ## A357751.P11607144683692642684

`A081676(A198094(n+1)+A000051(n))`
-/

namespace A357751.P11607144683692642684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A198094 (n + 1) + A000051 n).toNat

end

end A357751.P11607144683692642684

/-!
# A357752: a(n) is the largest perfect power < 2^n.

The programs for A357752, there is no canonical definition to state claims against.
-/

/-! ## A357752.P13861752419320024285

`A001597(A188951(n+3))`
-/

namespace A357752.P13861752419320024285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A188951 (n + 3)).toNat

end

end A357752.P13861752419320024285

/-! ## A357752.P149292390226933182

`A072103(A365931(n+3))`
-/

namespace A357752.P149292390226933182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072103 (A365931 (n + 3)).toNat

end

end A357752.P149292390226933182

/-! ## A357752.P17762310474888643807

`A001597(A070228(n+3)-1)`
-/

namespace A357752.P17762310474888643807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A070228 (n + 3) - 1).toNat

end

end A357752.P17762310474888643807

/-! ## A357752.P11158188508737650299

`A081676(∑[2^(n+2)]+2)`
-/

namespace A357752.P11158188508737650299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A357752.P11158188508737650299

/-! ## A357752.P15777940615117652295

`A353481(n+1)+A081676(A000225(n+3))`
-/

namespace A357752.P15777940615117652295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) + A081676 (A000225 (n + 3)).toNat

end

end A357752.P15777940615117652295

/-!
# A357753: a(n) is the least square with n binary digits.

The programs for A357753, the canonical program `A357753.P1993327159076856128` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357753 has offset 3).

The definition of A357753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357753.P9073754895088692993

`ceil(sqrt(2^(n+2)))²`
-/

namespace A357753.P9073754895088692993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 ^ (n + 2) : ℝ)⌉ ^ 2

end

end A357753.P9073754895088692993

namespace A357753

/-- `ceil(sqrt(2^(n+2)))²` -/
def P9073754895088692993.Spec : Prop :=
  ∀ n, P9073754895088692993.a n = A357753 (n + 3)

end A357753

/-! ## A357753.P1993327159076856128

`A017912(n+2)^2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A357753

/-- `A017912(n+2)^2` -/
def P1993327159076856128.Spec : Prop :=
  ∀ n, P1993327159076856128.a n = A357753 (n + 3)

theorem P1993327159076856128.correct : P1993327159076856128.Spec := by
  intro n
  simp only [A357753, Nat.add_sub_cancel]

end A357753

/-! ## A357753.P6645586689273101992

`record[A017912(1-floor(sqrt(n))²+n)²]`
-/

namespace A357753.P6645586689273101992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357753.P6645586689273101992

namespace A357753

/-- `record[A017912(1-floor(sqrt(n))²+n)²]` -/
def P6645586689273101992.Spec : Prop :=
  ∀ n, P6645586689273101992.a n = A357753 (n + 3)

end A357753

/-! ## A357753.P9010062209259907990

`or(A017912(n+2)², A185014(n+3))`
-/

namespace A357753.P9010062209259907990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017912 (n + 2) ^ 2) (A185014 (n + 3))

end

end A357753.P9010062209259907990

namespace A357753

/-- `or(A017912(n+2)², A185014(n+3))` -/
def P9010062209259907990.Spec : Prop :=
  ∀ n, P9010062209259907990.a n = A357753 (n + 3)

end A357753

/-! ## A357753.P2175909718859107589

`A017912(n+2)²%A007051(n+2)`
-/

namespace A357753.P2175909718859107589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017912 (n + 2) ^ 2) (A007051 (n + 2))

end

end A357753.P2175909718859107589

namespace A357753

/-- `A017912(n+2)²%A007051(n+2)` -/
def P2175909718859107589.Spec : Prop :=
  ∀ n, P2175909718859107589.a n = A357753 (n + 3)

end A357753

/-!
# A357754: a(n) is the largest square with n binary digits.

The programs for A357754, the canonical program `A357754.P13444555887762119449` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357754 has offset 3).

The definition of A357754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357754.P13444555887762119449

`floor(sqrt(∑[2^(n+2)]))²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357754

/-- `floor(sqrt(∑[2^(n+2)]))²` -/
def P13444555887762119449.Spec : Prop :=
  ∀ n, (P13444555887762119449.a n : ℤ) = A357754 (n + 3)

theorem P13444555887762119449.correct : P13444555887762119449.Spec := by
  intro n
  simp only [A357754, Nat.add_sub_cancel]

end A357754

/-! ## A357754.P15722931554558741016

`floor(sqrt(A000225(n+3)))^2`
-/

namespace A357754.P15722931554558741016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000225 (n + 3)) ^ 2

end

end A357754.P15722931554558741016

namespace A357754

/-- `floor(sqrt(A000225(n+3)))^2` -/
def P15722931554558741016.Spec : Prop :=
  ∀ n, P15722931554558741016.a n = A357754 (n + 3)

end A357754

/-! ## A357754.P9367398935130362117

`floor(sqrt(A077896(2*(n+2))))^2`
-/

namespace A357754.P9367398935130362117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A077896 (2 * (n + 2))) ^ 2

end

end A357754.P9367398935130362117

namespace A357754

/-- `floor(sqrt(A077896(2*(n+2))))^2` -/
def P9367398935130362117.Spec : Prop :=
  ∀ n, P9367398935130362117.a n = A357754 (n + 3)

end A357754

/-! ## A357754.P2629441300865842982

`record[(A116601(n)+A000038(n))²]`
-/

namespace A357754.P2629441300865842982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116601 n + A000038 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357754.P2629441300865842982

namespace A357754

/-- `record[(A116601(n)+A000038(n))²]` -/
def P2629441300865842982.Spec : Prop :=
  ∀ n, P2629441300865842982.a n = A357754 (n + 3)

end A357754

/-! ## A357754.P16388546593634505810

`A077625(n+3)²/4`
-/

namespace A357754.P16388546593634505810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077625 (n + 3) ^ 2 : ℚ) / 4

end

end A357754.P16388546593634505810

namespace A357754

/-- `A077625(n+3)²/4` -/
def P16388546593634505810.Spec : Prop :=
  ∀ n, P16388546593634505810.a n = (A357754 (n + 3) : ℚ)

end A357754

/-!
# A357757: We draw n non-crossing straight line segments inside an n X n square between 2*n grid points on its perimeter in such a way that it is not possible to add more non-crossing line segments between the remaining perimeter grid points. a(n) is the number of distinct possibilities for each n without duplicates by rotation or reflection.

The programs for A357757, there is no canonical definition to state claims against.
-/

/-! ## A357757.P15823723081026467555

`A001951(A082147(n)+A027941(n))`
-/

namespace A357757.P15823723081026467555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A082147 n + A027941 n).toNat

end

end A357757.P15823723081026467555

/-!
# A357758: Numbers k such that in the binary expansion of k, the Hamming weight of each block differs by at most 1 from every other block of the same length.

The programs for A357758, there is no canonical definition to state claims against.
-/

/-! ## A357758.P16517318695058311761

`A107909(comp[A336330(n+1)-A073963(n+4)])`
-/

namespace A357758.P16517318695058311761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336330 (n + 1) - A073963 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A357758.P16517318695058311761

/-!
# A357759: Numbers k such that in the binary expansion of k, the Hamming weight of each block differs by at most 2 from every other block of the same length.

The programs for A357759, there is no canonical definition to state claims against.
-/

/-! ## A357759.P13768320313963456707

`floor(A161252(A214602(n+1)+1)/(n+1))+n`
-/

namespace A357759.P13768320313963456707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161252 (A214602 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)

end

end A357759.P13768320313963456707

/-! ## A357759.P3817983834975404974

`A011745(A349990(n))+n`
-/

namespace A357759.P3817983834975404974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 (A349990 n).toNat + (n : ℤ)

end

end A357759.P3817983834975404974

/-! ## A357759.P1992924079039073733

`∪[A390437(n+1), record[A089869(n)]]`
-/

namespace A357759.P1992924079039073733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357759.P1992924079039073733

/-! ## A357759.P5029615205637638202

`round(A365042(n)/A152773(2*(n+2))+n)`
-/

namespace A357759.P5029615205637638202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A365042 n : ℚ) / (A152773 (2 * (n + 2)) : ℚ) + (n : ℚ))

end

end A357759.P5029615205637638202

/-! ## A357759.P7261490723018155313

`floor(A024783(3*n+2)/A234644(2*n+3)+n)`
-/

namespace A357759.P7261490723018155313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024783 (3 * n + 2) : ℚ) / (A234644 (2 * n + 3) : ℚ) + (n : ℚ)⌋

end

end A357759.P7261490723018155313

/-! ## A357759.P12675608205148681838

`floor(A373073(n+1)/A000040(n+1)+n)`
-/

namespace A357759.P12675608205148681838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A373073 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) + (n : ℚ)⌋

end

end A357759.P12675608205148681838

/-! ## A357759.P17453879297356255630

`∪[comp[A230079(3*n+5)], A272554(n+1)]`
-/

namespace A357759.P17453879297356255630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230079 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A357759.P17453879297356255630

/-! ## A357759.P3951354796662432252

`floor((n+1)/A365400(n+1))+n`
-/

namespace A357759.P3951354796662432252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A365400 (n + 1) : ℚ)⌋ + (n : ℤ)

end

end A357759.P3951354796662432252

/-! ## A357759.P3615402450469325286

`round(A239500(n+1)/A045318(n+1))+n`
-/

namespace A357759.P3615402450469325286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A239500 (n + 1) : ℚ) / (A045318 (n + 1) : ℚ)) + (n : ℤ)

end

end A357759.P3615402450469325286

/-! ## A357759.P6783780413480829470

`floor(A333223(n+1)/A064807(n+4))+n`
-/

namespace A357759.P6783780413480829470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333223 (n + 1) : ℚ) / (A064807 (n + 4) : ℚ)⌋ + (n : ℤ)

end

end A357759.P6783780413480829470

/-!
# A357761: a(n) = A227872(n) - A356018(n).

The programs for A357761, the canonical program `A357761.P12264452491752923310` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357761 has offset 1).

The definition of A357761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, A356018, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357761.P12264452491752923310

`A227872(n+1)-A356018(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A357761

/-- `A227872(n+1)-A356018(n+1)` -/
def P12264452491752923310.Spec : Prop :=
  ∀ n, P12264452491752923310.a n = A357761 (n + 1)

theorem P12264452491752923310.correct : P12264452491752923310.Spec := by
  intro n
  simp only [A357761, Nat.add_sub_cancel]

end A357761

/-! ## A357761.P13347143503424812313

`2*A227872(n+1)-A000005(n+1)`
-/

namespace A357761.P13347143503424812313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227872 (n + 1) - A000005 (n + 1)

end

end A357761.P13347143503424812313

namespace A357761

/-- `2*A227872(n+1)-A000005(n+1)` -/
def P13347143503424812313.Spec : Prop :=
  ∀ n, P13347143503424812313.a n = A357761 (n + 1)

end A357761

/-! ## A357761.P15023396784302761591

`A000005(n+1)-2*A356018(n+1)`
-/

namespace A357761.P15023396784302761591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 * A356018 (n + 1)

end

end A357761.P15023396784302761591

namespace A357761

/-- `A000005(n+1)-2*A356018(n+1)` -/
def P15023396784302761591.Spec : Prop :=
  ∀ n, P15023396784302761591.a n = A357761 (n + 1)

end A357761

/-! ## A357761.P8764064541791389144

`∑{d}[n+1, A186032(#-1)]`
-/

namespace A357761.P8764064541791389144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186032 (d - 1)

end

end A357761.P8764064541791389144

namespace A357761

/-- `∑{d}[n+1, A186032(#-1)]` -/
def P8764064541791389144.Spec : Prop :=
  ∀ n, P8764064541791389144.a n = A357761 (n + 1)

end A357761

/-! ## A357761.P11512397228437167402

`∑{d}[n+1, A000034(#-1)*A029883((n+1)/#)]`
-/

namespace A357761.P11512397228437167402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A029883 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357761.P11512397228437167402

namespace A357761

/-- `∑{d}[n+1, A000034(#-1)*A029883((n+1)/#)]` -/
def P11512397228437167402.Spec : Prop :=
  ∀ n, P11512397228437167402.a n = A357761 (n + 1)

end A357761

/-! ## A357761.P6377745574543342484

`∑{d}[n+1, A037227(#)*A106400((n+1)/#-1)]`
-/

namespace A357761.P6377745574543342484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037227 d * A106400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A357761.P6377745574543342484

namespace A357761

/-- `∑{d}[n+1, A037227(#)*A106400((n+1)/#-1)]` -/
def P6377745574543342484.Spec : Prop :=
  ∀ n, P6377745574543342484.a n = A357761 (n + 1)

end A357761

/-! ## A357761.P9454182282784184932

`∑{d}[n+1, A106400(A005408(#))]`
-/

namespace A357761.P9454182282784184932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106400 (A005408 d).toNat

end

end A357761.P9454182282784184932

namespace A357761

/-- `∑{d}[n+1, A106400(A005408(#))]` -/
def P9454182282784184932.Spec : Prop :=
  ∀ n, P9454182282784184932.a n = A357761 (n + 1)

end A357761

/-!
# A357765: Smallest positive integer that can be represented as the sum of n of its (possibly equal) divisors in the maximum number of ways (=A002966(n)).

The programs for A357765, there is no canonical definition to state claims against.
-/

/-! ## A357765.P3950378992653727013

`A007018(n)*A051451(A000110(n))`
-/

namespace A357765.P3950378992653727013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007018 n * A051451 (A000110 n).toNat

end

end A357765.P3950378992653727013

/-!
# A357766: Number of n X n tables where rows represent distinct permutations of { 1, 2, ..., n } and the column sums are equal.

The programs for A357766, there is no canonical definition to state claims against.
-/

/-! ## A357766.P6903454955546930728

`(n+1)!*A357767(n+1)`
-/

namespace A357766.P6903454955546930728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A357767 (n + 1)

end

end A357766.P6903454955546930728

/-! ## A357766.P10122867863151502584

`∏[A357745(n+1)]*A357767(n+1)`
-/

namespace A357766.P10122867863151502584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A357767 (n + 1)

end

end A357766.P10122867863151502584

/-! ## A357766.P99366702893160954

`∏[A357769(n+1)]*A357767(n+1)`
-/

namespace A357766.P99366702893160954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A357767 (n + 1)

end

end A357766.P99366702893160954

/-! ## A357766.P10373392403142992982

`∏[A357758(n+2)]*A357767(n+1)`
-/

namespace A357766.P10373392403142992982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A357767 (n + 1)

end

end A357766.P10373392403142992982

/-!
# A357767: Number of n X n tables where rows represent distinct permutations of { 1, 2, ..., n } and the column sums are equal, up to permutation of rows.

The programs for A357767, there is no canonical definition to state claims against.
-/

/-! ## A357767.P13672167557474917227

`A357766(n+1)/(n+1)!`
-/

namespace A357767.P13672167557474917227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357766 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A357767.P13672167557474917227

/-! ## A357767.P10092077642908138335

`A357766(n+1)/A000142(n+1)`
-/

namespace A357767.P10092077642908138335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357766 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A357767.P10092077642908138335

/-!
# A357768: Number of n X n tables where rows represent distinct permutations of { 1, 2, ..., n } and the column sums are equal, up to permutations of rows and columns.

The programs for A357768, there is no canonical definition to state claims against.
-/

/-! ## A357768.P9221376854932721047

`A316854(floor(sqrt(11)^n)+4)`
-/

namespace A357768.P9221376854932721047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316854 (⌊Real.sqrt (11 : ℝ) ^ n⌋ + 4).toNat

end

end A357768.P9221376854932721047

/-!
# A357769: Positive numbers with decimal expansion d_1, ..., d_w that are divisible by d_1 + ... + d_k for k = 1..w.

The programs for A357769, there is no canonical definition to state claims against.
-/

/-! ## A357769.P16917037876817843146

`∩[A101170(n+1), A032519(n)]`
-/

namespace A357769.P16917037876817843146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032519 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357769.P16917037876817843146

/-! ## A357769.P13367698020297471268

`∩[A101170(n+1), A088235(n)]`
-/

namespace A357769.P13367698020297471268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357769.P13367698020297471268

/-! ## A357769.P10970990117467138391

`∩[A032960(n+1), A101170(n+1)]`
-/

namespace A357769.P10970990117467138391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357769.P10970990117467138391

/-! ## A357769.P7997754597875852378

`∩[A032962(n+1), A101170(n+1)]`
-/

namespace A357769.P7997754597875852378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357769.P7997754597875852378

/-! ## A357769.P13086391790861142503

`∩[A032964(n+1), A101170(n+1)]`
-/

namespace A357769.P13086391790861142503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357769.P13086391790861142503

/-!
# A357770: Number of 2n-step closed paths on quasi-regular rhombic (rhombille) lattice starting from a degree-3 node.

The programs for A357770, there is no canonical definition to state claims against.
-/

/-! ## A357770.P14532567896343498112

`ceil(A357771(n)/2)`
-/

namespace A357770.P14532567896343498112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A357771 n : ℚ) / 2⌉

end

end A357770.P14532567896343498112

/-! ## A357770.P11227292624990442310

`ceil(2^(n-1))*A002893(n)`
-/

namespace A357770.P11227292624990442310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A002893 n

end

end A357770.P11227292624990442310

/-! ## A357770.P17276490516858870039

`A002893(n)*A011782(n)`
-/

namespace A357770.P17276490516858870039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A011782 n

end

end A357770.P17276490516858870039

/-! ## A357770.P10346730475474933704

`lcm(A002893(n), A003945(n))`
-/

namespace A357770.P10346730475474933704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002893 n) (A003945 n)

end

end A357770.P10346730475474933704

/-! ## A357770.P7108292259282668486

`A002893(n)*A131816(A161680(n))`
-/

namespace A357770.P7108292259282668486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A131816 (A161680 n).toNat

end

end A357770.P7108292259282668486

/-!
# A357771: Number of 2n-step closed paths on quasi-regular rhombic (rhombille) lattice starting from a degree-6 node.

The programs for A357771, there is no canonical definition to state claims against.
-/

/-! ## A357771.P12184551059105693557

`2^n*A002893(n)`
-/

namespace A357771.P12184551059105693557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002893 n

end

end A357771.P12184551059105693557

/-! ## A357771.P5465234467481805691

`lcm(A000079(n), A002893(n))`
-/

namespace A357771.P5465234467481805691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A002893 n)

end

end A357771.P5465234467481805691

/-! ## A357771.P6644795158805978019

`A002893(n)*A011782(n+1)`
-/

namespace A357771.P6644795158805978019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A011782 (n + 1)

end

end A357771.P6644795158805978019

/-! ## A357771.P13077779240602799012

`(A228514(n)+A086618(n))*A000079(n)`
-/

namespace A357771.P13077779240602799012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228514 n + A086618 n) * A000079 n

end

end A357771.P13077779240602799012

/-! ## A357771.P886927495735926928

`A000079(n)*A328807(A052905(n+1)+1)`
-/

namespace A357771.P886927495735926928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A328807 (A052905 (n + 1) + 1).toNat

end

end A357771.P886927495735926928

/-!
# A357772: Numbers with a sum of digits which is not 7-smooth.

The programs for A357772, there is no canonical definition to state claims against.
-/

/-! ## A357772.P11838922555525388301

`lt[8, A055672(A007953(n))]`
-/

namespace A357772.P11838922555525388301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357772.P11838922555525388301

/-! ## A357772.P1636222687959576940

`lt[8, A055672(A062028(n)-n)]`
-/

namespace A357772.P1636222687959576940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357772.P1636222687959576940

/-! ## A357772.P9225968852547861471

`lt[8, A055672(A118880(n)^(1/3))]`
-/

namespace A357772.P9225968852547861471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (SequenceMachineLib.roundAway ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A357772.P9225968852547861471

/-! ## A357772.P12466243820943328271

`∩[A038687(n+1), A397046(n+1)]`
-/

namespace A357772.P12466243820943328271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357772.P12466243820943328271

/-! ## A357772.P10401647878664389391

`∩[A178405(n+1), A397046(n+1)]`
-/

namespace A357772.P10401647878664389391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357772.P10401647878664389391

/-!
# A357773: Odd numbers with two zeros in their binary expansion.

The programs for A357773, there is no canonical definition to state claims against.
-/

/-! ## A357773.P11853669649972989231

`eq[8, A375487(2*n)]`
-/

namespace A357773.P11853669649972989231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375487 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357773.P11853669649972989231

/-! ## A357773.P14889990935142207523

`2*A379267(n+1)+1`
-/

namespace A357773.P14889990935142207523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379267 (n + 1) + 1

end

end A357773.P14889990935142207523

/-! ## A357773.P935214610624861483

`2*eq[2, A023416(n)]+1`
-/

namespace A357773.P935214610624861483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357773.P935214610624861483

/-! ## A357773.P15076636585842829001

`2*eq[2, A080791(n)]+1`
-/

namespace A357773.P15076636585842829001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357773.P15076636585842829001

/-! ## A357773.P12811941259998599436

`2*eq[3, A008687(n)]-1`
-/

namespace A357773.P12811941259998599436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A357773.P12811941259998599436

/-! ## A357773.P4244651137867427208

`A005408(eq[3, a(floor(n/2))+(n+1)%2])` with `a(0)=1`
-/

namespace A357773.P4244651137867427208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357773.P4244651137867427208

/-! ## A357773.P898348806534255893

`A005408(eq[3, 1-(n%2-a(floor(n/2)))])` with `a(0)=1`
-/

namespace A357773.P898348806534255893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - (((n % 2 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357773.P898348806534255893

/-! ## A357773.P13445447137057693919

`A059010(A379267(n+1))`
-/

namespace A357773.P13445447137057693919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (A379267 (n + 1)).toNat

end

end A357773.P13445447137057693919

/-! ## A357773.P9994656532058723330

`A005408(eq[2, A023416(n)])`
-/

namespace A357773.P9994656532058723330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357773.P9994656532058723330

/-! ## A357773.P10997337904468827459

`A059010(eq[2, A023416(n)])`
-/

namespace A357773.P10997337904468827459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357773.P10997337904468827459

/-!
# A357774: Binary expansions of odd numbers with two zeros in their binary expansion.

The programs for A357774, the canonical program `A357774.P7410309054543883889` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357774 has offset 1).

The definition of A357774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357774.P17747483720542943666

`A007088(A357773(n+1))`
-/

namespace A357774.P17747483720542943666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A357773 (n + 1)).toNat

end

end A357774.P17747483720542943666

namespace A357774

/-- `A007088(A357773(n+1))` -/
def P17747483720542943666.Spec : Prop :=
  ∀ n, P17747483720542943666.a n = A357774 (n + 1)

end A357774

/-! ## A357774.P5018996703477834126

`A007088(eq[A023416(n), A269735(n)])`
-/

namespace A357774.P5018996703477834126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357774.P5018996703477834126

namespace A357774

/-- `A007088(eq[A023416(n), A269735(n)])` -/
def P5018996703477834126.Spec : Prop :=
  ∀ n, P5018996703477834126.a n = A357774 (n + 1)

end A357774

/-! ## A357774.P3944733936650148341

`A007088(eq[A023416(n), A266662(n+3)])`
-/

namespace A357774.P3944733936650148341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357774.P3944733936650148341

namespace A357774

/-- `A007088(eq[A023416(n), A266662(n+3)])` -/
def P3944733936650148341.Spec : Prop :=
  ∀ n, P3944733936650148341.a n = A357774 (n + 1)

end A357774

/-! ## A357774.P2138750771448050275

`A007088(eq[A080100(n), A131027(3*n+4)])`
-/

namespace A357774.P2138750771448050275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131027 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357774.P2138750771448050275

namespace A357774

/-- `A007088(eq[A080100(n), A131027(3*n+4)])` -/
def P2138750771448050275.Spec : Prop :=
  ∀ n, P2138750771448050275.a n = A357774 (n + 1)

end A357774

/-! ## A357774.P7410309054543883889

`A099821(eq[3, A008687(n)])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A357774

/-- `A099821(eq[3, A008687(n)])` -/
def P7410309054543883889.Spec : Prop :=
  ∀ n, P7410309054543883889.a n = A357774 (n + 1)

theorem P7410309054543883889.correct : P7410309054543883889.Spec := by
  intro n
  simp only [A357774, Nat.add_sub_cancel]

end A357774

/-!
# A357775: Numbers k with the property that the symmetric representation of sigma(k) has seven parts.

The programs for A357775, there is no canonical definition to state claims against.
-/

/-! ## A357775.P1926353793858402306

`A240062(A167487(n+5))`
-/

namespace A357775.P1926353793858402306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240062 (A167487 (n + 5)).toNat

end

end A357775.P1926353793858402306

/-!
# A357778: Maximum number of edges in a 5-degenerate graph with n vertices.

The programs for A357778, the canonical program `A357778.P10263349427858675626` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357778 has offset 1).

The definition of A357778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357778.P10263349427858675626

`a(n-1)+5` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357778

/-- `a(n-1)+5` -/
def P10263349427858675626.Spec : Prop :=
  ∀ n, (P10263349427858675626.a n : ℤ) = A357778 (n + 1)

theorem P10263349427858675626.correct : P10263349427858675626.Spec := by
  intro n
  simp only [A357778, Nat.add_sub_cancel]

end A357778

/-!
# A357779: Maximum number of edges in a 6-degenerate graph with n vertices.

The programs for A357779, the canonical program `A357779.P4892264661243223591` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357779 has offset 1).

The definition of A357779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357779.P4892264661243223591

`record[C(n, 2)%(2*(n+2))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A357779

/-- `record[C(n, 2)%(2*(n+2))]` -/
def P4892264661243223591.Spec : Prop :=
  ∀ n, (P4892264661243223591.a n : ℤ) = A357779 (n + 1)

theorem P4892264661243223591.correct : P4892264661243223591.Spec := by
  intro n
  simp only [A357779, Nat.add_sub_cancel]

end A357779

/-!
# A357781: Semiprimes k such that k is congruent to 1 modulo k's index in the sequence of semiprimes.

The programs for A357781, there is no canonical definition to state claims against.
-/

/-! ## A357781.P3642177836579990664

`A001358(A106126(n+1))`
-/

namespace A357781.P3642177836579990664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106126 (n + 1)).toNat

end

end A357781.P3642177836579990664

/-! ## A357781.P15947805956219886420

`A179464(3*A106126(n+1))`
-/

namespace A357781.P15947805956219886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179464 (3 * A106126 (n + 1)).toNat

end

end A357781.P15947805956219886420

/-! ## A357781.P8183149368802268015

`A027656(6*A106126(n+1))`
-/

namespace A357781.P8183149368802268015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (6 * A106126 (n + 1)).toNat

end

end A357781.P8183149368802268015

/-! ## A357781.P14092552626006394079

`A008486(A106126(n+1))-A057428(n+1)`
-/

namespace A357781.P14092552626006394079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A106126 (n + 1)).toNat - A057428 (n + 1)

end

end A357781.P14092552626006394079

/-! ## A357781.P13164547893081375660

`A001358(eq[A028310(n), A174956(3*n+1)])`
-/

namespace A357781.P13164547893081375660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357781.P13164547893081375660

/-!
# A357782: a(n) = Sum_{k=0..floor(n/3)} 2^k * Stirling2(n,3*k).

The programs for A357782, there is no canonical definition to state claims against.
-/

/-! ## A357782.P63345105984027716

`A117274(A318731(n+1)+A000262(n))`
-/

namespace A357782.P63345105984027716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117274 (A318731 (n + 1) + A000262 n).toNat

end

end A357782.P63345105984027716

/-! ## A357782.P14530037704902248942

`A165477(A360231(n))-A162642(n+1)`
-/

namespace A357782.P14530037704902248942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A360231 n).toNat - A162642 (n + 1)

end

end A357782.P14530037704902248942

/-!
# A357783: a(n) = Sum_{k=0..floor((n-1)/3)} 2^k * Stirling2(n,3*k+1).

The programs for A357783, there is no canonical definition to state claims against.
-/

/-! ## A357783.P17194066503100691158

`A045917(A058803(n)+2*n)`
-/

namespace A357783.P17194066503100691158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A058803 n + (2 * n : ℤ)).toNat

end

end A357783.P17194066503100691158

/-! ## A357783.P2666934990287024379

`A335923(A007911(n+1)+a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A357783.P2666934990287024379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  A335923 (A007911 (n + 1) + a (n - 1)).toNat

end

end A357783.P2666934990287024379

/-! ## A357783.P10993005222468588336

`A155150(A155150(4*a(n-2)-3*a(n-4)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A357783.P10993005222468588336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n a =>
  A155150 (A155150 (4 * a (n - 2) - 3 * a (n - 4)).toNat).toNat

end

end A357783.P10993005222468588336

/-!
# A357785: a(n) = coefficient of x^n, n >= 1, in A(x) such that: A(x)^2 = A( x^2/(1 - 4*x - 4*x^2) ) * sqrt(1 - 4*x - 4*x^2).

The programs for A357785, there is no canonical definition to state claims against.
-/

/-! ## A357785.P10134757492444854088

`A008615(A337090(2*(n+2))+A001481(n+1))`
-/

namespace A357785.P10134757492444854088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A337090 (2 * (n + 2)) + A001481 (n + 1)).toNat

end

end A357785.P10134757492444854088

/-! ## A357785.P3373801999178054816

`A226190(A150640(n))`
-/

namespace A357785.P3373801999178054816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A150640 n).toNat

end

end A357785.P3373801999178054816

/-!
# A357786: a(n) = coefficient of x^n, n >= 1, in A(x) such that: A(x)^2 = A( x^2/(1 - 4*x - 8*x^2) ) * sqrt(1 - 4*x - 8*x^2).

The programs for A357786, there is no canonical definition to state claims against.
-/

/-! ## A357786.P11354510699361832460

`A296068(2*n*A101886(n+1))`
-/

namespace A357786.P11354510699361832460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296068 ((2 * n : ℤ) * A101886 (n + 1)).toNat

end

end A357786.P11354510699361832460

/-! ## A357786.P6099863534855877357

`A060715(A215718(n+2))-(comp[C(n, 2)-2]-n)`
-/

namespace A357786.P6099863534855877357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A215718 (n + 2)).toNat - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A357786.P6099863534855877357

/-!
# A357788: a(n) = coefficient of x^(2*n) in C(x) defined by: C(x) + i*S(x) = Sum_{n=-oo..+oo} i^n * (2*x)^(n^2) * F(x)^n, where F(x) is the g.f. of A357787 such that C(x)^2 + S(x)^2 = 1.

The programs for A357788, there is no canonical definition to state claims against.
-/

/-! ## A357788.P4516176453284773951

`A000302(n)*A357806(n)`
-/

namespace A357788.P4516176453284773951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A357806 n

end

end A357788.P4516176453284773951

/-! ## A357788.P13405849123337197948

`A000079(n)²*A357806(n)`
-/

namespace A357788.P13405849123337197948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A357806 n

end

end A357788.P13405849123337197948

/-! ## A357788.P6996730265043762960

`A000079(2*n)*A357806(n)`
-/

namespace A357788.P6996730265043762960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A357806 n

end

end A357788.P6996730265043762960

/-! ## A357788.P8019890154794828837

`A011782(n+1)²*A357806(n)`
-/

namespace A357788.P8019890154794828837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 * A357806 n

end

end A357788.P8019890154794828837

/-! ## A357788.P13982911951160218385

`A011782(2*n+1)*A357806(n)`
-/

namespace A357788.P13982911951160218385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A357806 n

end

end A357788.P13982911951160218385

/-!
# A357791: a(n) = coefficient of x^n in A(x) such that: x = Sum_{n=-oo..+oo} x^n * (1 - x^n * A(-x)^n)^n.

The programs for A357791, there is no canonical definition to state claims against.
-/

/-! ## A357791.P4788923432029116549

`A244479(A389659(n+1))`
-/

namespace A357791.P4788923432029116549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A389659 (n + 1)).toNat

end

end A357791.P4788923432029116549

/-! ## A357791.P10088684976420937550

`A187187(A122045(n)+A026748(n))`
-/

namespace A357791.P10088684976420937550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A122045 n + A026748 n).toNat

end

end A357791.P10088684976420937550

/-! ## A357791.P292598462973260857

`A083662(A052841(n))-A187253(n)`
-/

namespace A357791.P292598462973260857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A052841 n).toNat - A187253 n

end

end A357791.P292598462973260857

/-!
# A357792: a(n) = coefficient of x^n in A(x) = Sum_{n>=0} C(x)^n * (1 - C(x)^n)^n, where C(x) = x + C(x)^2 is a g.f. of the Catalan numbers (A000108).

The programs for A357792, there is no canonical definition to state claims against.
-/

/-! ## A357792.P7017651241636379778

`A100196(A268699(n))`
-/

namespace A357792.P7017651241636379778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A268699 n).toNat

end

end A357792.P7017651241636379778

/-! ## A357792.P1529168366242083885

`A003144(A035354(n)^A000700(n))`
-/

namespace A357792.P1529168366242083885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (SequenceMachineLib.roundAway ((A035354 n : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A357792.P1529168366242083885

/-! ## A357792.P12126054834519332509

`A034887(A014137(n)%A058107(n))`
-/

namespace A357792.P12126054834519332509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Int.tmod (A014137 n) (A058107 n)).toNat

end

end A357792.P12126054834519332509

/-! ## A357792.P2662651568219455423

`A034887(C(A014138(n), A331562(n)))`
-/

namespace A357792.P2662651568219455423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Nat.choose (A014138 n).toNat (A331562 n).toNat)

end

end A357792.P2662651568219455423

/-!
# A357793: a(n) = coefficient of x^n in A(x) = Sum_{n>=0} x^n*F(x)^n * (1 - x^n*F(x)^n)^n, where F(x) = 1 + x*F(x)^3 is a g.f. of A001764.

The programs for A357793, there is no canonical definition to state claims against.
-/

/-! ## A357793.P13820623641693272212

`A023193(A208355(2*n)*A239561(n))`
-/

namespace A357793.P13820623641693272212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A208355 (2 * n) * A239561 n).toNat

end

end A357793.P13820623641693272212

/-!
# A357794: a(n) = coefficient of x^n in the power series A(x) such that: 1 = Sum_{n=-oo..+oo} n*(n+1)/2 * x^n * (1 - x^(n+1))^n * A(x)^(n+1).

The programs for A357794, there is no canonical definition to state claims against.
-/

/-! ## A357794.P4648046448331361376

`A172002(A090351(n+1))`
-/

namespace A357794.P4648046448331361376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (A090351 (n + 1)).toNat

end

end A357794.P4648046448331361376

/-!
# A357795: a(n) = coefficient of x^n in the power series A(x) such that: 1 = Sum_{n=-oo..+oo} n*(n+1)*(n+2)/3! * x^n * (1 - x^(n+2))^n * A(x)^(n+2).

The programs for A357795, there is no canonical definition to state claims against.
-/

/-! ## A357795.P2206576091606337533

`A138989(n+1)*A276625(n!)`
-/

namespace A357795.P2206576091606337533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138989 (n + 1) * A276625 (Nat.factorial n)

end

end A357795.P2206576091606337533

/-!
# A357797: a(n) = coefficient of x^n in the power series A(x) such that: x = Sum_{n=-oo..+oo} (-1)^n * x^n * (2 + x^n)^n * A(x)^n.

The programs for A357797, there is no canonical definition to state claims against.
-/

/-! ## A357797.P17128243297599028460

`A349536(A149681(n))`
-/

namespace A357797.P17128243297599028460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A149681 n).toNat

end

end A357797.P17128243297599028460

/-! ## A357797.P2690307739480511942

`A369262(n)+A297330(A343364(n))`
-/

namespace A357797.P2690307739480511942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369262 n + A297330 (A343364 n).toNat

end

end A357797.P2690307739480511942

/-!
# A357798: a(n) = coefficient of x^n in the power series A(x) such that: 1 = Sum_{n=-oo..+oo} x^(n+1) * (2 - x^(n+1))^n * A(x)^n.

The programs for A357798, there is no canonical definition to state claims against.
-/

/-! ## A357798.P16167561155658897698

`A298866(A001764(n)+n)`
-/

namespace A357798.P16167561155658897698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298866 (A001764 n + (n : ℤ)).toNat

end

end A357798.P16167561155658897698

/-! ## A357798.P4877709571065029471

`A301455(n)+A048881(A002110(n))`
-/

namespace A357798.P4877709571065029471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301455 n + A048881 (A002110 n).toNat

end

end A357798.P4877709571065029471

/-!
# A357799: a(n) = coefficient of x^n in A(x) such that: 1 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * (A(x) + x^n)^(n+1).

The programs for A357799, there is no canonical definition to state claims against.
-/

/-! ## A357799.P10497828201148988415

`A384178(A014574(n+1))-n`
-/

namespace A357799.P10497828201148988415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384178 (A014574 (n + 1)).toNat - (n : ℤ)

end

end A357799.P10497828201148988415

/-! ## A357799.P15143109523510106590

`A302796(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A357799.P15143109523510106590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A302796 (a (n - 1)).toNat

end

end A357799.P15143109523510106590

