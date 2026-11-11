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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A027200: Triangular array T read by rows: T(n,k) = number of partitions of n into an even number of parts, each >=k.

The programs for A027200, there is no canonical definition to state claims against.
-/

/-! ## A027200.P10425464304442127790

`A026807(n+1)-A027199(n+1)`
-/

namespace A027200.P10425464304442127790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - A027199 (n + 1)

end

end A027200.P10425464304442127790

/-! ## A027200.P6939123318760989659

`A026794(A245300(n+1))-A027199(n+1)`
-/

namespace A027200.P6939123318760989659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A245300 (n + 1)).toNat - A027199 (n + 1)

end

end A027200.P6939123318760989659

/-! ## A027200.P9608461197227472475

`A027185(A245300(n)+A108872(n+1))`
-/

namespace A027200.P9608461197227472475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027185 (A245300 n + A108872 (n + 1)).toNat

end

end A027200.P9608461197227472475

/-! ## A027200.P11267625246418493100

`A026807(n+1)-A027186(A245300(n)+A108872(n+1))`
-/

namespace A027200.P11267625246418493100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - A027186 (A245300 n + A108872 (n + 1)).toNat

end

end A027200.P11267625246418493100

/-! ## A027200.P11488958973032317083

`A026807(n+1)-A027193(A010766(n+1)%A335389(n+1))`
-/

namespace A027200.P11488958973032317083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - A027193 (Int.tmod (A010766 (n + 1)) (A335389 (n + 1))).toNat

end

end A027200.P11488958973032317083

/-!
# A027201: a(n) = self-convolution of row n of array T given by A026714.

The programs for A027201, there is no canonical definition to state claims against.
-/

/-! ## A027201.P4600792057266832136

`A002330(A002294(n))+A001109(n)`
-/

namespace A027201.P4600792057266832136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A002294 n).toNat + A001109 n

end

end A027201.P4600792057266832136

/-! ## A027201.P14782648595707122917

`A005375(A005494(n)-A329373(n+1))`
-/

namespace A027201.P14782648595707122917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (A005494 n - A329373 (n + 1)).toNat

end

end A027201.P14782648595707122917

/-!
# A027202: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026714.

The programs for A027202, there is no canonical definition to state claims against.
-/

/-! ## A027202.P14840518531671494037

`A347742(A010901(n))+A151860(n)`
-/

namespace A027202.P14840518531671494037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347742 (A010901 n).toNat + A151860 n

end

end A027202.P14840518531671494037

/-!
# A027203: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026714.

The programs for A027203, there is no canonical definition to state claims against.
-/

/-! ## A027203.P6691531864217265116

`A156077(xor(A214825(3*n+2), A342340(n+1)))`
-/

namespace A027203.P6691531864217265116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (Int.xor (A214825 (3 * n + 2)) (A342340 (n + 1))).toNat

end

end A027203.P6691531864217265116

/-!
# A027205: a(n) = Sum_{k=0..n} (k+1) * A026714(n, k).

The programs for A027205, there is no canonical definition to state claims against.
-/

/-! ## A027205.P14400736300842155129

`(1+n/2)*A026721(n)`
-/

namespace A027205.P14400736300842155129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n : ℚ) / 2) * (A026721 n : ℚ)

end

end A027205.P14400736300842155129

/-! ## A027205.P7310267428789957817

`A026741(n+2)*A026741(A026721(n))`
-/

namespace A027205.P7310267428789957817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) * A026741 (A026721 n).toNat

end

end A027205.P7310267428789957817

/-! ## A027205.P636235165455484292

`A001281((n+2)*A026721(n))`
-/

namespace A027205.P636235165455484292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n + 2 : ℤ) * A026721 n).toNat

end

end A027205.P636235165455484292

/-! ## A027205.P7131430631780326499

`A004525((n+2)*A026721(n))`
-/

namespace A027205.P7131430631780326499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 2 : ℤ) * A026721 n).toNat

end

end A027205.P7131430631780326499

/-! ## A027205.P14296925273800128881

`A026741((n+2)*A026721(n))`
-/

namespace A027205.P14296925273800128881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A026721 n).toNat

end

end A027205.P14296925273800128881

/-!
# A027206: Numbers m such that (1+i)^m + i is a Gaussian prime.

The programs for A027206, there is no canonical definition to state claims against.
-/

/-! ## A027206.P17443080192680194301

`lt[A007359(n), A097100(A103702(3*n+5))]`
-/

namespace A027206.P17443080192680194301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097100 (A103702 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027206.P17443080192680194301

/-!
# A027207: Self-convolution of row n of array T given by A026725.

The programs for A027207, there is no canonical definition to state claims against.
-/

/-! ## A027207.P12788573666427173560

`∑[A332249(A047854(n))]`
-/

namespace A027207.P12788573666427173560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A047854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027207.P12788573666427173560

/-! ## A027207.P18405156703713490405

`A150560(n)-A096008(A150554(n))`
-/

namespace A027207.P18405156703713490405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150560 n - A096008 (A150554 n).toNat

end

end A027207.P18405156703713490405

/-!
# A027208: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026725.

The programs for A027208, there is no canonical definition to state claims against.
-/

/-! ## A027208.P8617032844246349027

`A085348(n)-A137579(A056391(n+4))`
-/

namespace A027208.P8617032844246349027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085348 n - A137579 (A056391 (n + 4)).toNat

end

end A027208.P8617032844246349027

/-! ## A027208.P15418611227177311828

`A085348(n)-A137579(A029447(2*(n+2)))`
-/

namespace A027208.P15418611227177311828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085348 n - A137579 (A029447 (2 * (n + 2))).toNat

end

end A027208.P15418611227177311828

/-!
# A027209: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026725.

The programs for A027209, there is no canonical definition to state claims against.
-/

/-! ## A027209.P409474097000346129

`A169682(A181989(n))-A122824(n+1)`
-/

namespace A027209.P409474097000346129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169682 (A181989 n).toNat - A122824 (n + 1)

end

end A027209.P409474097000346129

/-!
# A027211: a(n) = Sum_{k=0..n} (k+1) * A026725(n, k).

The programs for A027211, there is no canonical definition to state claims against.
-/

/-! ## A027211.P7512762252230332423

`∑{#}[n, (#+1)*A026725(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027211.P7512762252230332423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026725 (Nat.choose (n + 1) 2 + k)

end

end A027211.P7512762252230332423

/-! ## A027211.P16481293580879659401

`A178133(A271894(n+1))`
-/

namespace A027211.P16481293580879659401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (A271894 (n + 1)).toNat

end

end A027211.P16481293580879659401

/-!
# A027212: a(n) = Sum_{k=0..n} (k+1) * A026725(n, n-k).

The programs for A027212, there is no canonical definition to state claims against.
-/

/-! ## A027212.P13365712846920335757

`∑{#}[n, (#+1)*A026725(C(n+1, 2)+n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027212.P13365712846920335757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026725 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A027212.P13365712846920335757

/-! ## A027212.P17651587003061916544

`A191841(1-∑[xor(-1, n²)])`
-/

namespace A027212.P17651587003061916544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191841 (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027212.P17651587003061916544

/-!
# A027213: Sum of squares of numbers in row n of array T given by A026725.

The programs for A027213, there is no canonical definition to state claims against.
-/

/-! ## A027213.P3992299358967357491

`A173865(A005773(n))+A032741(n+1)`
-/

namespace A027213.P3992299358967357491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (A005773 n).toNat + A032741 (n + 1)

end

end A027213.P3992299358967357491

/-! ## A027213.P97946418951102614

`A173865(A005773(n))+A086415(n+1)`
-/

namespace A027213.P97946418951102614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (A005773 n).toNat + A086415 (n + 1)

end

end A027213.P97946418951102614

/-!
# A027214: a(n) = greatest number in row n of array T given by A026736.

The programs for A027214, there is no canonical definition to state claims against.
-/

/-! ## A027214.P1189248992913077842

`or(Δ[A000073(n)], A321484(n+1))`
-/

namespace A027214.P1189248992913077842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A321484 (n + 1))

end

end A027214.P1189248992913077842

/-! ## A027214.P7701183206642575476

`A167688(A092566(n))+A005578(n)`
-/

namespace A027214.P7701183206642575476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A092566 n).toNat + A005578 n

end

end A027214.P7701183206642575476

/-! ## A027214.P8751855334047923312

`or(A275778(n)-A000213(n), A321484(n+1))`
-/

namespace A027214.P8751855334047923312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275778 n - A000213 n) (A321484 (n + 1))

end

end A027214.P8751855334047923312

/-! ## A027214.P17701258763531283551

`A120951(2^(n-1)-a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A027214.P17701258763531283551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A120951 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ))).toNat + 1

end

end A027214.P17701258763531283551

/-! ## A027214.P10149475116442630748

`a(n-1)+A050723(a(n-2))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A027214.P10149475116442630748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A050723 (a (n - 2)).toNat + a (n - 2))

end

end A027214.P10149475116442630748

/-!
# A027215: Self-convolution of row n of array T given by A026736.

The programs for A027215, there is no canonical definition to state claims against.
-/

/-! ## A027215.P1125088417730551734

`A062299(3*A150305(n))`
-/

namespace A027215.P1125088417730551734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (3 * A150305 n).toNat

end

end A027215.P1125088417730551734

/-! ## A027215.P5811144134880290557

`A071648(A002893(n))+A071356(n)`
-/

namespace A027215.P5811144134880290557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A002893 n).toNat + A071356 n

end

end A027215.P5811144134880290557

/-!
# A027216: a(n) = Sum_{k=0..n-1} T(n,k)*T(n,k+1), T given by A026736.

The programs for A027216, there is no canonical definition to state claims against.
-/

/-! ## A027216.P6699625916570567446

`A090915(n!+4*a(n-1)+1)` with `a(0)=1`
-/

namespace A027216.P6699625916570567446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090915 ((Nat.factorial n : ℤ) + 4 * a (n - 1) + 1).toNat

end

end A027216.P6699625916570567446

/-!
# A027217: a(n) = Sum_{k=0..n-2} T(n,k)*T(n,k+2), T given by A026736.

The programs for A027217, there is no canonical definition to state claims against.
-/

/-! ## A027217.P5283297307314600748

`2^n*A228718(2*n+3)`
-/

namespace A027217.P5283297307314600748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A228718 (2 * n + 3)

end

end A027217.P5283297307314600748

/-!
# A027219: a(n) = Sum_{k=0..n} (k+1) * A026736(n,k).

The programs for A027219, the canonical program `A027219.P5192656358713780349` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027219 has offset 0).

The definition of A027219 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026736, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027219.P5192656358713780349

`∑{#}[n, (#+1)*A026736(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027219

/-- `∑{#}[n, (#+1)*A026736(C(n+1, 2)+#)]` -/
def P5192656358713780349.Spec : Prop :=
  ∀ n, P5192656358713780349.a n = A027219 n

theorem P5192656358713780349.correct : P5192656358713780349.Spec := by
  intro n
  simp only [A027219]

end A027219

/-! ## A027219.P14348632701010151272

`A048739(n)+A047886(A372168(n))`
-/

namespace A027219.P14348632701010151272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + A047886 (A372168 n).toNat

end

end A027219.P14348632701010151272

namespace A027219

/-- `A048739(n)+A047886(A372168(n))` -/
def P14348632701010151272.Spec : Prop :=
  ∀ n, P14348632701010151272.a n = A027219 n

end A027219

/-! ## A027219.P13229161165252117223

`A054846(A084615(n)-A218045(n+1))`
-/

namespace A027219.P13229161165252117223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A084615 n - A218045 (n + 1)).toNat

end

end A027219.P13229161165252117223

namespace A027219

/-- `A054846(A084615(n)-A218045(n+1))` -/
def P13229161165252117223.Spec : Prop :=
  ∀ n, P13229161165252117223.a n = A027219 n

end A027219

/-!
# A027220: a(n) = Sum_{k=0..n} (k+1) * A026736(n,n-k).

The programs for A027220, the canonical program `A027220.P2512006496526143006` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027220 has offset 0).

The definition of A027220 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026736, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A027220.P2512006496526143006

`∑{#}[n, (#+1)*A026736(C(n+1, 2)+n-#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027220

/-- `∑{#}[n, (#+1)*A026736(C(n+1, 2)+n-#)]` -/
def P2512006496526143006.Spec : Prop :=
  ∀ n, P2512006496526143006.a n = A027220 n

theorem P2512006496526143006.correct : P2512006496526143006.Spec := by
  intro n
  simp only [A027220]

end A027220

/-! ## A027220.P8222694785543387633

`(n+2)*A026743(n)-A027219(n)`
-/

namespace A027220.P8222694785543387633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026743 n - A027219 n

end

end A027220.P8222694785543387633

namespace A027220

/-- `(n+2)*A026743(n)-A027219(n)` -/
def P8222694785543387633.Spec : Prop :=
  ∀ n, P8222694785543387633.a n = A027220 n

end A027220

/-! ## A027220.P10270160087121682113

`A000006(A027240(n+1)+n)`
-/

namespace A027220.P10270160087121682113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A027240 (n + 1) + (n : ℤ)).toNat

end

end A027220.P10270160087121682113

namespace A027220

/-- `A000006(A027240(n+1)+n)` -/
def P10270160087121682113.Spec : Prop :=
  ∀ n, P10270160087121682113.a n = A027220 n

end A027220

/-!
# A027221: Sum of squares of numbers in row n of array T given by A026736.

The programs for A027221, there is no canonical definition to state claims against.
-/

/-! ## A027221.P10582068107183113368

`A157271(xor((2^n+3)*2^(n-1), comp[2*n+3]))`
-/

namespace A027221.P10582068107183113368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.xor (SequenceMachineLib.roundAway ((2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A027221.P10582068107183113368

/-! ## A027221.P2849268187620756599

`A001462(∏[dr(A306147(n))])`
-/

namespace A027221.P2849268187620756599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A306147 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027221.P2849268187620756599

/-!
# A027223: a(n) = self-convolution of row n of array T given by A026747.

The programs for A027223, there is no canonical definition to state claims against.
-/

/-! ## A027223.P3358018784092588063

`record[A336420(p?[3*round(2*n/5)+n])]`
-/

namespace A027223.P3358018784092588063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027223.P3358018784092588063

/-!
# A027224: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026747.

The programs for A027224, there is no canonical definition to state claims against.
-/

/-! ## A027224.P11544602514962816505

`A000010(A215552(n))/n!`
-/

namespace A027224.P11544602514962816505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A215552 n).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A027224.P11544602514962816505

/-!
# A027227: a(n) = Sum_{k=0..n} (k+1) * A026747(n, k).

The programs for A027227, there is no canonical definition to state claims against.
-/

/-! ## A027227.P15993501429208915724

`∑{#}[n, (#+1)*A026747(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027227.P15993501429208915724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026747 (Nat.choose (n + 1) 2 + k)

end

end A027227.P15993501429208915724

/-! ## A027227.P4481250598841329776

`A345890(A000005(∏[2^n]))`
-/

namespace A027227.P4481250598841329776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345890 (A000005 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027227.P4481250598841329776

/-!
# A027228: a(n) = Sum_{k=0..n} (k+1) * A026747(n, n-k).

The programs for A027228, there is no canonical definition to state claims against.
-/

/-! ## A027228.P343335166051855883

`∑{#}[n, (#+1)*A026747(C(n+1, 2)+n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027228.P343335166051855883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026747 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A027228.P343335166051855883

/-! ## A027228.P13305561524355966386

`(n+2)*A026754(n)-A027227(n)`
-/

namespace A027228.P13305561524355966386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026754 n - A027227 n

end

end A027228.P13305561524355966386

/-!
# A027229: a(n) = sum of squares of numbers in row n of array T given by A026747.

The programs for A027229, there is no canonical definition to state claims against.
-/

/-! ## A027229.P13666451820949021760

`A163510(A027217(n+2))+A027223(n)`
-/

namespace A027229.P13666451820949021760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (A027217 (n + 2)).toNat + A027223 n

end

end A027229.P13666451820949021760

/-!
# A027230: Greatest number in row n of array T given by A026758.

The programs for A027230, there is no canonical definition to state claims against.
-/

/-! ## A027230.P16198308615622116453

`A111900(A242529(n+1))+A026764(n)`
-/

namespace A027230.P16198308615622116453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A242529 (n + 1)).toNat + A026764 n

end

end A027230.P16198308615622116453

/-!
# A027231: Self-convolution of row n of array T given by A026758.

The programs for A027231, there is no canonical definition to state claims against.
-/

/-! ## A027231.P5210014168646882445

`A248180(A149315(n+1))`
-/

namespace A027231.P5210014168646882445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A149315 (n + 1)).toNat

end

end A027231.P5210014168646882445

/-! ## A027231.P12074747256236530226

`A027207(n)+A027200(A093352(n))`
-/

namespace A027231.P12074747256236530226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027207 n + A027200 (A093352 n).toNat

end

end A027231.P12074747256236530226

/-!
# A027232: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026758.

The programs for A027232, there is no canonical definition to state claims against.
-/

/-! ## A027232.P8001144721177876173

`A369776(A023143(n+2))`
-/

namespace A027232.P8001144721177876173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369776 (A023143 (n + 2)).toNat

end

end A027232.P8001144721177876173

/-!
# A027234: a(n) = Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026758.

The programs for A027234, there is no canonical definition to state claims against.
-/

/-! ## A027234.P8169172018560708417

`A244234(A244201(n+7))+A244219(3*n+1)`
-/

namespace A027234.P8169172018560708417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244234 (A244201 (n + 7)).toNat + A244219 (3 * n + 1)

end

end A027234.P8169172018560708417

/-!
# A027235: a(n) = Sum_{k=0..n} (k+1) * A026758(n, k).

The programs for A027235, there is no canonical definition to state claims against.
-/

/-! ## A027235.P4298412727760097947

`∑{#}[n, (#+1)*A026758(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027235.P4298412727760097947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026758 (Nat.choose (n + 1) 2 + k)

end

end A027235.P4298412727760097947

/-! ## A027235.P338698941123825424

`(n+2)*A026765(n)-A027236(n)`
-/

namespace A027235.P338698941123825424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026765 n - A027236 n

end

end A027235.P338698941123825424

/-! ## A027235.P16489875107814542691

`A084858(n)-A235189(A099553(n+3))`
-/

namespace A027235.P16489875107814542691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n - A235189 (A099553 (n + 3)).toNat

end

end A027235.P16489875107814542691

/-!
# A027236: a(n) = Sum_{k=0..n} (k+1) * A026758(n, n-k).

The programs for A027236, there is no canonical definition to state claims against.
-/

/-! ## A027236.P8462553663016571696

`∑{#}[n, (#+1)*A026758(C(n+1, 2)+n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027236.P8462553663016571696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026758 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A027236.P8462553663016571696

/-! ## A027236.P1853734032669837084

`(n+2)*A026765(n)-A027235(n)`
-/

namespace A027236.P1853734032669837084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026765 n - A027235 n

end

end A027236.P1853734032669837084

/-!
# A027237: Sum of squares of numbers in row n of array T given by A026758.

The programs for A027237, there is no canonical definition to state claims against.
-/

/-! ## A027237.P12668653322815611921

`A194701(A123916(n+1))+A079773(n)`
-/

namespace A027237.P12668653322815611921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194701 (A123916 (n + 1)).toNat + A079773 n

end

end A027237.P12668653322815611921

/-! ## A027237.P5644023603619926722

`A240310(A112798(3*n+2)*A240271(n+1))`
-/

namespace A027237.P5644023603619926722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240310 (A112798 (3 * n + 2) * A240271 (n + 1)).toNat

end

end A027237.P5644023603619926722

/-!
# A027239: Self-convolution of row n of array T given by A026769.

The programs for A027239, there is no canonical definition to state claims against.
-/

/-! ## A027239.P3079099701923022325

`∑[A241183(A242509(n))]`
-/

namespace A027239.P3079099701923022325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A242509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027239.P3079099701923022325

/-! ## A027239.P1717944159046094219

`A133656(n)+A038023((row(n)+1)!/(col(n)+1)!)`
-/

namespace A027239.P1717944159046094219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133656 n + A038023 (SequenceMachineLib.roundAway ((Nat.factorial (SequenceMachineLib.triRow n + 1) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n + 1) : ℚ))).toNat

end

end A027239.P1717944159046094219

/-!
# A027240: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026769.

The programs for A027240, there is no canonical definition to state claims against.
-/

/-! ## A027240.P8440273023487410114

`A277676(n*a(n-1))+7` with `a(0)=1, a(1)=4`
-/

namespace A027240.P8440273023487410114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A277676 ((n : ℤ) * a (n - 1)).toNat + 7

end

end A027240.P8440273023487410114

/-!
# A027241: a(n) = Sum_{k=0..n-2} T(n,k) * T(n,k+2), with T given by A026769.

The programs for A027241, there is no canonical definition to state claims against.
-/

/-! ## A027241.P17758262355419604738

`A103221(4*(n+2)*C(2*(n+2), n)/2)`
-/

namespace A027241.P17758262355419604738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.roundAway (4 * ((n + 2 : ℚ) * ((Nat.choose (2 * (n + 2)) n : ℚ) / 2)))).toNat

end

end A027241.P17758262355419604738

/-!
# A027242: a(n) = Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026769.

The programs for A027242, there is no canonical definition to state claims against.
-/

/-! ## A027242.P44045591695849934

`A091242(5*a(n-1)+n)` with `a(0)=1`
-/

namespace A027242.P44045591695849934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091242 (5 * a (n - 1) + (n : ℤ)).toNat

end

end A027242.P44045591695849934

/-!
# A027243: a(n) = Sum_{k=0..n} (k+1) * A026769(n, k).

The programs for A027243, there is no canonical definition to state claims against.
-/

/-! ## A027243.P14762189419047668659

`∑{#}[n, (#+1)*A026769(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027243.P14762189419047668659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026769 (Nat.choose (n + 1) 2 + k)

end

end A027243.P14762189419047668659

/-! ## A027243.P8161952870345300168

`(n+2)*A026776(n)-A027244(n)`
-/

namespace A027243.P8161952870345300168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026776 n - A027244 n

end

end A027243.P8161952870345300168

/-! ## A027243.P8966780266457536065

`or(A002330(A137635(n)), A007814(n+1))`
-/

namespace A027243.P8966780266457536065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002330 (A137635 n).toNat) (A007814 (n + 1))

end

end A027243.P8966780266457536065

/-!
# A027244: a(n) = Sum_{k=0..n} (k+1) * A026769(n, n-k).

The programs for A027244, there is no canonical definition to state claims against.
-/

/-! ## A027244.P4174026509376425933

`∑{#}[n, (#+1)*A026769(C(n+1, 2)+n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027244.P4174026509376425933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026769 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A027244.P4174026509376425933

/-! ## A027244.P16223419659996726394

`A344161(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A027244.P16223419659996726394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A344161 (a (n - 2) + 1).toNat

end

end A027244.P16223419659996726394

/-!
# A027245: Sum of squares of numbers in row n of array T given by A026769.

The programs for A027245, there is no canonical definition to state claims against.
-/

/-! ## A027245.P17940481609773110127

`A355479(A058309(n))+1`
-/

namespace A027245.P17940481609773110127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355479 (A058309 n).toNat + 1

end

end A027245.P17940481609773110127

/-! ## A027245.P5556248134629920659

`or(∏{e}[n+1, #+1], A147706(A147706(3*(n+1))))`
-/

namespace A027245.P5556248134629920659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A147706 (A147706 (3 * (n + 1))).toNat)

end

end A027245.P5556248134629920659

/-!
# A027247: a(n) = self-convolution of row n of array T given by A026780.

The programs for A027247, there is no canonical definition to state claims against.
-/

/-! ## A027247.P4707417419265089735

`A003963(xor(1, 8^n-1))`
-/

namespace A027247.P4707417419265089735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.xor 1 ((8 ^ n : ℤ) - 1)).toNat

end

end A027247.P4707417419265089735

/-!
# A027248: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026780.

The programs for A027248, there is no canonical definition to state claims against.
-/

/-! ## A027248.P2537748200717034139

`Δ[A014085(A018020(2*n))]`
-/

namespace A027248.P2537748200717034139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A018020 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027248.P2537748200717034139

/-!
# A027250: a(n) = Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026780.

The programs for A027250, there is no canonical definition to state claims against.
-/

/-! ## A027250.P10612469615759404347

`or(A004526(A258341(2*n+1)), A033951(n))`
-/

namespace A027250.P10612469615759404347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A258341 (2 * n + 1)).toNat) (A033951 n)

end

end A027250.P10612469615759404347

/-!
# A027251: a(n) = Sum_{k=0..n} (k+1) * A026780(n, k).

The programs for A027251, there is no canonical definition to state claims against.
-/

/-! ## A027251.P15528106936468547005

`∑{#}[n, (#+1)*A026780(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027251.P15528106936468547005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026780 (Nat.choose (n + 1) 2 + k)

end

end A027251.P15528106936468547005

/-! ## A027251.P10708685285366184873

`A002878(n)-A359240(A000045(3*n+1))`
-/

namespace A027251.P10708685285366184873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - A359240 (A000045 (3 * n + 1)).toNat

end

end A027251.P10708685285366184873

/-! ## A027251.P5771488894089660957

`A002878(n)-A246271(A209610(3*n+4))`
-/

namespace A027251.P5771488894089660957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - A246271 (A209610 (3 * n + 4)).toNat

end

end A027251.P5771488894089660957

/-!
# A027252: a(n) = Sum_{k=0..n} (k+1) * A026780(n, n-k).

The programs for A027252, there is no canonical definition to state claims against.
-/

/-! ## A027252.P10752478225000037563

`∑{#}[n, (#+1)*A026780(C(n+1, 2)+n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027252.P10752478225000037563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A026780 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A027252.P10752478225000037563

/-! ## A027252.P3088487897043285646

`xor(n, A327478(A000712(n)))`
-/

namespace A027252.P3088487897043285646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A327478 (A000712 n).toNat)

end

end A027252.P3088487897043285646

/-!
# A027253: Sum of squares of numbers in row n of array T given by A026780.

The programs for A027253, there is no canonical definition to state claims against.
-/

/-! ## A027253.P13729951115854788470

`A176554(A000041(n)*A327845(n+1))`
-/

namespace A027253.P13729951115854788470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176554 (A000041 n * A327845 (n + 1)).toNat

end

end A027253.P13729951115854788470

/-!
# A027255: Sum_{k=0..n-3} T(n,k) * T(n,k+3), with T given by A026703.

The programs for A027255, there is no canonical definition to state claims against.
-/

/-! ## A027255.P1835164885160954460

`A315675(A005667(n))-5`
-/

namespace A027255.P1835164885160954460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 (A005667 n).toNat - 5

end

end A027255.P1835164885160954460

/-!
# A027256: a(n) = Sum_{k=0..n} (k+1) * A026703(n, k).

The programs for A027256, there is no canonical definition to state claims against.
-/

/-! ## A027256.P8145316189425213718

`A006370(A026710(n+1)*(n+2))`
-/

namespace A027256.P8145316189425213718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A026710 (n + 1) * (n + 2 : ℤ)).toNat

end

end A027256.P8145316189425213718

/-! ## A027256.P17342608368472988705

`A291000(n)+A056239(A001142(n))`
-/

namespace A027256.P17342608368472988705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291000 n + A056239 (A001142 n).toNat

end

end A027256.P17342608368472988705

/-!
# A027257: a(n) = self-convolution of row n of array T given by A025177.

The programs for A027257, there is no canonical definition to state claims against.
-/

/-! ## A027257.P4284719034123395709

`record[A024996(n*or(1, n+1))]`
-/

namespace A027257.P4284719034123395709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (n * Nat.lor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027257.P4284719034123395709

/-! ## A027257.P10942951645802499847

`A024996((1+2*n)*2*n)`
-/

namespace A027257.P10942951645802499847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((1 + 2 * n) * (2 * n))

end

end A027257.P10942951645802499847

/-! ## A027257.P12019577843885937022

`record[A024996(A045896(n))]`
-/

namespace A027257.P12019577843885937022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A045896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027257.P12019577843885937022

/-! ## A027257.P10889497849489122144

`record[A024996(A081348(n))]`
-/

namespace A027257.P10889497849489122144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A081348 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027257.P10889497849489122144

/-! ## A027257.P6050625219424106678

`record[A024996(A238411(n+1))]`
-/

namespace A027257.P6050625219424106678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A238411 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027257.P6050625219424106678

/-! ## A027257.P3292782205311487143

`record[A024996(A008497(2*n))]`
-/

namespace A027257.P3292782205311487143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A008497 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027257.P3292782205311487143

/-! ## A027257.P16319795354768513013

`record[A024996(n*A000265(n+1))]`
-/

namespace A027257.P16319795354768513013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 ((n : ℤ) * A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027257.P16319795354768513013

/-!
# A027258: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A025177.

The programs for A027258, the canonical program `A027258.P7847213636858550571` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027258 has offset 1).

The definition of A027258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027258.P7847213636858550571

`A024998(2*(1+n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027258

/-- `A024998(2*(1+n))` -/
def P7847213636858550571.Spec : Prop :=
  ∀ n, P7847213636858550571.a n = A027258 (n + 1)

theorem P7847213636858550571.correct : P7847213636858550571.Spec := by
  intro n
  simp only [A027258, Nat.add_sub_cancel]

end A027258

/-! ## A027258.P6217375900914844657

`A026095(2*(1+n))-3`
-/

namespace A027258.P6217375900914844657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026095 (2 * (1 + n)) - 3

end

end A027258.P6217375900914844657

namespace A027258

/-- `A026095(2*(1+n))-3` -/
def P6217375900914844657.Spec : Prop :=
  ∀ n, P6217375900914844657.a n = A027258 (n + 1)

end A027258

/-! ## A027258.P6958150267134574943

`record[A024998(A198954(n)+1)]`
-/

namespace A027258.P6958150267134574943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (A198954 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027258.P6958150267134574943

namespace A027258

/-- `record[A024998(A198954(n)+1)]` -/
def P6958150267134574943.Spec : Prop :=
  ∀ n, P6958150267134574943.a n = A027258 (n + 1)

end A027258

/-! ## A027258.P13512097625359539503

`record[A024998(A014681(n)+2)]`
-/

namespace A027258.P13512097625359539503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (A014681 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027258.P13512097625359539503

namespace A027258

/-- `record[A024998(A014681(n)+2)]` -/
def P13512097625359539503.Spec : Prop :=
  ∀ n, P13512097625359539503.a n = A027258 (n + 1)

end A027258

/-! ## A027258.P7949648825251176882

`lcm(2, A024998(Δ[A002378(n)]))`
-/

namespace A027258.P7949648825251176882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A024998 (f1 (n + 1) - f1 n).toNat)

end

end A027258.P7949648825251176882

namespace A027258

/-- `lcm(2, A024998(Δ[A002378(n)]))` -/
def P7949648825251176882.Spec : Prop :=
  ∀ n, (P7949648825251176882.a n : ℤ) = A027258 (n + 1)

end A027258

/-! ## A027258.P17309663566399710187

`A024997(2*n+3)-A026135(2*n+1)`
-/

namespace A027258.P17309663566399710187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (2 * n + 3) - A026135 (2 * n + 1)

end

end A027258.P17309663566399710187

namespace A027258

/-- `A024997(2*n+3)-A026135(2*n+1)` -/
def P17309663566399710187.Spec : Prop :=
  ∀ n, P17309663566399710187.a n = A027258 (n + 1)

end A027258

/-! ## A027258.P5589154983224889813

`A024998(A317440(n+1))/A054977(n)`
-/

namespace A027258.P5589154983224889813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024998 (A317440 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A027258.P5589154983224889813

namespace A027258

/-- `A024998(A317440(n+1))/A054977(n)` -/
def P5589154983224889813.Spec : Prop :=
  ∀ n, P5589154983224889813.a n = (A027258 (n + 1) : ℚ)

end A027258

/-! ## A027258.P3322395578419816621

`A025178(2*n+1)+A026135(2*n+1)-A025178(2*(n+1))`
-/

namespace A027258.P3322395578419816621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (2 * n + 1) + (A026135 (2 * n + 1) - A025178 (2 * (n + 1)))

end

end A027258.P3322395578419816621

namespace A027258

/-- `A025178(2*n+1)+A026135(2*n+1)-A025178(2*(n+1))` -/
def P3322395578419816621.Spec : Prop :=
  ∀ n, P3322395578419816621.a n = A027258 (n + 1)

end A027258

/-! ## A027258.P11187275641527374818

`A024998(A317440(n+1))%A072256(n+1)`
-/

namespace A027258.P11187275641527374818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024998 (A317440 (n + 1)).toNat) (A072256 (n + 1))

end

end A027258.P11187275641527374818

namespace A027258

/-- `A024998(A317440(n+1))%A072256(n+1)` -/
def P11187275641527374818.Spec : Prop :=
  ∀ n, P11187275641527374818.a n = A027258 (n + 1)

end A027258

/-!
# A027259: a(n) = Sum_{k=0..2n-2} T(n,k) * T(n,k+2), with T given by A025177.

The programs for A027259, the canonical program `A027259.P7321742831238855292` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027259 has offset 2).

The definition of A027259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027259.P7321742831238855292

`A026069(2*(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027259

/-- `A026069(2*(n+2))` -/
def P7321742831238855292.Spec : Prop :=
  ∀ n, P7321742831238855292.a n = A027259 (n + 2)

theorem P7321742831238855292.correct : P7321742831238855292.Spec := by
  intro n
  simp only [A027259, Nat.add_sub_cancel]

end A027259

/-! ## A027259.P5568669893704341342

`record[A026069(xor(1, n)+3)]`
-/

namespace A027259.P5568669893704341342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (Nat.xor 1 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027259.P5568669893704341342

namespace A027259

/-- `record[A026069(xor(1, n)+3)]` -/
def P5568669893704341342.Spec : Prop :=
  ∀ n, P5568669893704341342.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P8695337425490325387

`record[A026069(A198954(n)+3)]`
-/

namespace A027259.P8695337425490325387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (A198954 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027259.P8695337425490325387

namespace A027259

/-- `record[A026069(A198954(n)+3)]` -/
def P8695337425490325387.Spec : Prop :=
  ∀ n, P8695337425490325387.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P7666925152976610211

`record[A026069(A014681(n)+4)]`
-/

namespace A027259.P7666925152976610211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (A014681 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027259.P7666925152976610211

namespace A027259

/-- `record[A026069(A014681(n)+4)]` -/
def P7666925152976610211.Spec : Prop :=
  ∀ n, P7666925152976610211.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P7183274554178000065

`record[A026069(A026741(n+1)+3)]`
-/

namespace A027259.P7183274554178000065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (A026741 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027259.P7183274554178000065

namespace A027259

/-- `record[A026069(A026741(n+1)+3)]` -/
def P7183274554178000065.Spec : Prop :=
  ∀ n, P7183274554178000065.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P12879157340822453902

`A025180(2*(n+2))-A025180(2*n+3)`
-/

namespace A027259.P12879157340822453902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (2 * (n + 2)) - A025180 (2 * n + 3)

end

end A027259.P12879157340822453902

namespace A027259

/-- `A025180(2*(n+2))-A025180(2*n+3)` -/
def P12879157340822453902.Spec : Prop :=
  ∀ n, P12879157340822453902.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P8729890337101427137

`A025181(2*n+3)+A025179(2*n+3)`
-/

namespace A027259.P8729890337101427137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025181 (2 * n + 3) + A025179 (2 * n + 3)

end

end A027259.P8729890337101427137

namespace A027259

/-- `A025181(2*n+3)+A025179(2*n+3)` -/
def P8729890337101427137.Spec : Prop :=
  ∀ n, P8729890337101427137.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P8419065081502880835

`A024997(2*(n+2))-A026107(2*n+3)`
-/

namespace A027259.P8419065081502880835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (2 * (n + 2)) - A026107 (2 * n + 3)

end

end A027259.P8419065081502880835

namespace A027259

/-- `A024997(2*(n+2))-A026107(2*n+3)` -/
def P8419065081502880835.Spec : Prop :=
  ∀ n, P8419065081502880835.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P3316678463527244082

`A026084(2*n+5)-A024997(2*(n+2))`
-/

namespace A027259.P3316678463527244082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026084 (2 * n + 5) - A024997 (2 * (n + 2))

end

end A027259.P3316678463527244082

namespace A027259

/-- `A026084(2*n+5)-A024997(2*(n+2))` -/
def P3316678463527244082.Spec : Prop :=
  ∀ n, P3316678463527244082.a n = A027259 (n + 2)

end A027259

/-! ## A027259.P953234990767905040

`Δ[A025179(2*n+3)]%A025179(2*(n+2))`
-/

namespace A027259.P953234990767905040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A025179 (2 * (n + 2)))

end

end A027259.P953234990767905040

namespace A027259

/-- `Δ[A025179(2*n+3)]%A025179(2*(n+2))` -/
def P953234990767905040.Spec : Prop :=
  ∀ n, P953234990767905040.a n = A027259 (n + 2)

end A027259

/-!
# A027260: a(n) = Sum_{k=0..2n-3} T(n,k) * T(n,k+3), with T given by A025177.

The programs for A027260, the canonical program `A027260.P16526017121427228600` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027260 has offset 3).

The definition of A027260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027260.P16526017121427228600

`A026070(2*(n+3))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027260

/-- `A026070(2*(n+3))` -/
def P16526017121427228600.Spec : Prop :=
  ∀ n, P16526017121427228600.a n = A027260 (n + 3)

theorem P16526017121427228600.correct : P16526017121427228600.Spec := by
  intro n
  simp only [A027260, Nat.add_sub_cancel]

end A027260

/-! ## A027260.P9718848920552618744

`lcm(2, A026070(A005843(n+3)))`
-/

namespace A027260.P9718848920552618744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A026070 (A005843 (n + 3)).toNat)

end

end A027260.P9718848920552618744

namespace A027260

/-- `lcm(2, A026070(A005843(n+3)))` -/
def P9718848920552618744.Spec : Prop :=
  ∀ n, (P9718848920552618744.a n : ℤ) = A027260 (n + 3)

end A027260

/-! ## A027260.P12714932474580127772

`record[A026070(A014681(n+1)+4)]`
-/

namespace A027260.P12714932474580127772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (A014681 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027260.P12714932474580127772

namespace A027260

/-- `record[A026070(A014681(n+1)+4)]` -/
def P12714932474580127772.Spec : Prop :=
  ∀ n, P12714932474580127772.a n = A027260 (n + 3)

end A027260

/-! ## A027260.P15316927876302634701

`record[A026070(2+A065423(n+5))]`
-/

namespace A027260.P15316927876302634701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (2 + A065423 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027260.P15316927876302634701

namespace A027260

/-- `record[A026070(2+A065423(n+5))]` -/
def P15316927876302634701.Spec : Prop :=
  ∀ n, P15316927876302634701.a n = A027260 (n + 3)

end A027260

/-! ## A027260.P1575746788365189929

`A025181(2*(n+3))-A025181(2*n+5)`
-/

namespace A027260.P1575746788365189929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025181 (2 * (n + 3)) - A025181 (2 * n + 5)

end

end A027260.P1575746788365189929

namespace A027260

/-- `A025181(2*(n+3))-A025181(2*n+5)` -/
def P1575746788365189929.Spec : Prop :=
  ∀ n, P1575746788365189929.a n = A027260 (n + 3)

end A027260

/-! ## A027260.P16019948348020137638

`A026070(A005843(n+3))^A000108(val(n+1, 8))`
-/

namespace A027260.P16019948348020137638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026070 (A005843 (n + 3)).toNat : ℚ) ^ (A000108 (SequenceMachineLib.valuation (n + 1) 8) : ℤ)

end

end A027260.P16019948348020137638

namespace A027260

/-- `A026070(A005843(n+3))^A000108(val(n+1, 8))` -/
def P16019948348020137638.Spec : Prop :=
  ∀ n, P16019948348020137638.a n = (A027260 (n + 3) : ℚ)

end A027260

/-!
# A027261: a(n) = Sum_{k=0..2n} (k+1) * A025177(n, k).

The programs for A027261, the canonical program `A027261.P6808650977396239567` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027261 has offset 0).

The definition of A027261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027261.P6808650977396239567

`ogf((1-2x+3x^2)/(1-6x+9x^2))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A027261

/-- `ogf((1-2x+3x^2)/(1-6x+9x^2))` -/
def P6808650977396239567.Spec : Prop :=
  ∀ n, P6808650977396239567.a n = A027261 n

theorem P6808650977396239567.correct : P6808650977396239567.Spec := by
  intro n
  simp only [A027261]

end A027261

/-! ## A027261.P8652764715531974388

`record[3*T(n-1,k)]*(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A027261.P8652764715531974388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 1)

end

end A027261.P8652764715531974388

namespace A027261

/-- `record[3*T(n-1,k)]*(n+1)` -/
def P8652764715531974388.Spec : Prop :=
  ∀ n, (P8652764715531974388.a n : ℤ) = A027261 n

end A027261

/-! ## A027261.P808728924674055843

`Δ[floor(3^(n-1))]*(n+1)`
-/

namespace A027261.P808728924674055843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n + 1 : ℤ)

end

end A027261.P808728924674055843

namespace A027261

/-- `Δ[floor(3^(n-1))]*(n+1)` -/
def P808728924674055843.Spec : Prop :=
  ∀ n, P808728924674055843.a n = A027261 n

end A027261

/-! ## A027261.P3921477056612061899

`floor(record[3*a(n-1)]*(n+1))` with `a(0)=1, a(1)=-3, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A027261.P3921477056612061899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 1 : ℤ)

end

end A027261.P3921477056612061899

namespace A027261

/-- `floor(record[3*a(n-1)]*(n+1))` -/
def P3921477056612061899.Spec : Prop :=
  ∀ n, P3921477056612061899.a n = A027261 n

end A027261

/-! ## A027261.P15418101768355180261

`A025192(n)/(1+n)^(-1)`
-/

namespace A027261.P15418101768355180261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 n : ℚ) / (1 + n : ℚ) ^ (-1 : ℤ)

end

end A027261.P15418101768355180261

namespace A027261

/-- `A025192(n)/(1+n)^(-1)` -/
def P15418101768355180261.Spec : Prop :=
  ∀ n, P15418101768355180261.a n = (A027261 n : ℚ)

end A027261

/-! ## A027261.P17888824880360549462

`∑{#}[n+1, C(n+1, #)*A093835(#)]`
-/

namespace A027261.P17888824880360549462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A093835 k

end

end A027261.P17888824880360549462

namespace A027261

/-- `∑{#}[n+1, C(n+1, #)*A093835(#)]` -/
def P17888824880360549462.Spec : Prop :=
  ∀ n, P17888824880360549462.a n = A027261 n

end A027261

/-! ## A027261.P14579031242096936383

`(2*n+3)*3^(n-1)-A140429(n)`
-/

namespace A027261.P14579031242096936383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A140429 n : ℚ)

end

end A027261.P14579031242096936383

namespace A027261

/-- `(2*n+3)*3^(n-1)-A140429(n)` -/
def P14579031242096936383.Spec : Prop :=
  ∀ n, P14579031242096936383.a n = (A027261 n : ℚ)

end A027261

/-! ## A027261.P15592481333741311016

`A229277(n)+A133494(n)`
-/

namespace A027261.P15592481333741311016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + A133494 n

end

end A027261.P15592481333741311016

namespace A027261

/-- `A229277(n)+A133494(n)` -/
def P15592481333741311016.Spec : Prop :=
  ∀ n, P15592481333741311016.a n = A027261 n

end A027261

/-! ## A027261.P2789762697397761250

`abs(A081038(n)-A140429(n))`
-/

namespace A027261.P2789762697397761250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081038 n - A140429 n|

end

end A027261.P2789762697397761250

namespace A027261

/-- `abs(A081038(n)-A140429(n))` -/
def P2789762697397761250.Spec : Prop :=
  ∀ n, P2789762697397761250.a n = A027261 n

end A027261

/-! ## A027261.P18190580901841665108

`A081038(n)+1-A094388(n)`
-/

namespace A027261.P18190580901841665108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n + (1 - A094388 n)

end

end A027261.P18190580901841665108

namespace A027261

/-- `A081038(n)+1-A094388(n)` -/
def P18190580901841665108.Spec : Prop :=
  ∀ n, P18190580901841665108.a n = A027261 n

end A027261

/-! ## A027261.P4464240369451844263

`A064017(n+1)+A027471(n+1)`
-/

namespace A027261.P4464240369451844263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064017 (n + 1) + A027471 (n + 1)

end

end A027261.P4464240369451844263

namespace A027261

/-- `A064017(n+1)+A027471(n+1)` -/
def P4464240369451844263.Spec : Prop :=
  ∀ n, P4464240369451844263.a n = A027261 n

end A027261

/-! ## A027261.P17174418006556546976

`A064017(n+1)+n*A140429(n)`
-/

namespace A027261.P17174418006556546976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064017 (n + 1) + (n : ℤ) * A140429 n

end

end A027261.P17174418006556546976

namespace A027261

/-- `A064017(n+1)+n*A140429(n)` -/
def P17174418006556546976.Spec : Prop :=
  ∀ n, P17174418006556546976.a n = A027261 n

end A027261

/-! ## A027261.P11520549088995917526

`A025192(n)+A081038(n)-A000244(n)`
-/

namespace A027261.P11520549088995917526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + (A081038 n - A000244 n)

end

end A027261.P11520549088995917526

namespace A027261

/-- `A025192(n)+A081038(n)-A000244(n)` -/
def P11520549088995917526.Spec : Prop :=
  ∀ n, P11520549088995917526.a n = A027261 n

end A027261

/-! ## A027261.P10723855394133769397

`A027471(n+1)+A027471(n+1)+A025192(n)`
-/

namespace A027261.P10723855394133769397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A027471 (n + 1) + A025192 n)

end

end A027261.P10723855394133769397

namespace A027261

/-- `A027471(n+1)+A027471(n+1)+A025192(n)` -/
def P10723855394133769397.Spec : Prop :=
  ∀ n, P10723855394133769397.a n = A027261 n

end A027261

/-! ## A027261.P16306283842201060205

`A064017(n+1)+A064017(n+1)-A025192(n)`
-/

namespace A027261.P16306283842201060205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064017 (n + 1) + (A064017 (n + 1) - A025192 n)

end

end A027261.P16306283842201060205

namespace A027261

/-- `A064017(n+1)+A064017(n+1)-A025192(n)` -/
def P16306283842201060205.Spec : Prop :=
  ∀ n, P16306283842201060205.a n = A027261 n

end A027261

/-! ## A027261.P4304796168711879768

`A027471(n+1)+A027471(n+1)+∑[A052156(n)]`
-/

namespace A027261.P4304796168711879768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A027471 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027261.P4304796168711879768

namespace A027261

/-- `A027471(n+1)+A027471(n+1)+∑[A052156(n)]` -/
def P4304796168711879768.Spec : Prop :=
  ∀ n, P4304796168711879768.a n = A027261 n

end A027261

/-! ## A027261.P14007183228573354107

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=4, a(2)=18`
-/

namespace A027261.P14007183228573354107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 18] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A027261.P14007183228573354107

namespace A027261

/-- `6*a(n-1)-9*a(n-2)` -/
def P14007183228573354107.Spec : Prop :=
  ∀ n, P14007183228573354107.a n = A027261 n

end A027261

/-! ## A027261.P9748561088678107139

`(n+1)*A110593(n+1)/3`
-/

namespace A027261.P9748561088678107139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A110593 (n + 1) : ℚ) / 3

end

end A027261.P9748561088678107139

namespace A027261

/-- `(n+1)*A110593(n+1)/3` -/
def P9748561088678107139.Spec : Prop :=
  ∀ n, P9748561088678107139.a n = (A027261 n : ℚ)

end A027261

/-! ## A027261.P15502762680769203394

`round(((n+1)*A099856(n)+1)/3)`
-/

namespace A027261.P15502762680769203394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * A099856 n + 1 : ℚ) / 3)

end

end A027261.P15502762680769203394

namespace A027261

/-- `round(((n+1)*A099856(n)+1)/3)` -/
def P15502762680769203394.Spec : Prop :=
  ∀ n, P15502762680769203394.a n = A027261 n

end A027261

/-! ## A027261.P16540997686791687283

`(A028310(2*n)+2)*3^n/3`
-/

namespace A027261.P16540997686791687283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028310 (2 * n) + 2) * (3 ^ n : ℤ) : ℚ) / 3

end

end A027261.P16540997686791687283

namespace A027261

/-- `(A028310(2*n)+2)*3^n/3` -/
def P16540997686791687283.Spec : Prop :=
  ∀ n, P16540997686791687283.a n = (A027261 n : ℚ)

end A027261

/-!
# A027262: a(n) = self-convolution of row n of array T given by A026519.

The programs for A027262, there is no canonical definition to state claims against.
-/

/-! ## A027262.P12267290978265179572

`A122237(∑[A004685(n)])`
-/

namespace A027262.P12267290978265179572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027262.P12267290978265179572

/-!
# A027266: a(n) = Sum_{k=0..2n} (k+1) * A026519(n, k).

The programs for A027266, the canonical program `A027266.P17250345272885386651` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027266 has offset 0).

The definition of A027266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027266.P17250345272885386651

`12*a(n-2)-36*a(n-4)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=72`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A027266

/-- `12*a(n-2)-36*a(n-4)` -/
def P17250345272885386651.Spec : Prop :=
  ∀ n, P17250345272885386651.a n = A027266 n

theorem P17250345272885386651.correct : P17250345272885386651.Spec := by
  intro n
  simp only [A027266]

end A027266

/-! ## A027266.P9914687793397427252

`(n+1)/2*6^((n-1)/2)*(3*(1-(-1)^n)+sqrt(6)*(1+(-1)^n))`
-/

namespace A027266.P9914687793397427252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2 : ℝ) * (6 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ) * ((3 * (1 - (-1) ^ n) : ℝ) + Real.sqrt (6 : ℝ) * (1 + (-1) ^ n : ℝ))

end

end A027266.P9914687793397427252

namespace A027266

/-- `(n+1)/2*6^((n-1)/2)*(3*(1-(-1)^n)+sqrt(6)*(1+(-1)^n))` -/
def P9914687793397427252.Spec : Prop :=
  ∀ n, P9914687793397427252.a n = (A027266 n : ℝ)

end A027266

/-! ## A027266.P11333664245229124657

`ogf((1+6x+6x^2)/(1-12x^2+36x^4))`
-/

namespace A027266.P11333664245229124657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 6] [1, 0, -12, 0, 36] n

end

end A027266.P11333664245229124657

namespace A027266

/-- `ogf((1+6x+6x^2)/(1-12x^2+36x^4))` -/
def P11333664245229124657.Spec : Prop :=
  ∀ n, P11333664245229124657.a n = A027266 n

end A027266

/-! ## A027266.P12709903167254051118

`record[6*T(n-1,k)]*(n+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A027266.P12709903167254051118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  6 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 1)

end

end A027266.P12709903167254051118

namespace A027266

/-- `record[6*T(n-1,k)]*(n+1)` -/
def P12709903167254051118.Spec : Prop :=
  ∀ n, (P12709903167254051118.a n : ℤ) = A027266 n

end A027266

/-! ## A027266.P832894607468764882

`(n+1)*∏[2+n%2]/2`
-/

namespace A027266.P832894607468764882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A027266.P832894607468764882

namespace A027266

/-- `(n+1)*∏[2+n%2]/2` -/
def P832894607468764882.Spec : Prop :=
  ∀ n, P832894607468764882.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P9973051237836302660

`(n+1)*∏[4-gcd(2, n)]/2`
-/

namespace A027266.P9973051237836302660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A027266.P9973051237836302660

namespace A027266

/-- `(n+1)*∏[4-gcd(2, n)]/2` -/
def P9973051237836302660.Spec : Prop :=
  ∀ n, P9973051237836302660.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P11722919571856116067

`∏[and(1, n)+2]*(n+1)/2`
-/

namespace A027266.P11722919571856116067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) * (n + 1) : ℕ) : ℚ) / 2

end

end A027266.P11722919571856116067

namespace A027266

/-- `∏[and(1, n)+2]*(n+1)/2` -/
def P11722919571856116067.Spec : Prop :=
  ∀ n, P11722919571856116067.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P5024143896715508704

`(n+1)*∏[5-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A027266.P5024143896715508704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027266.P5024143896715508704

namespace A027266

/-- `(n+1)*∏[5-a(n-1)]` -/
def P5024143896715508704.Spec : Prop :=
  ∀ n, P5024143896715508704.a n = A027266 n

end A027266

/-! ## A027266.P3886292162960170429

`(n+1)*∑[6*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A027266.P3886292162960170429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027266.P3886292162960170429

namespace A027266

/-- `(n+1)*∑[6*a(n-2)]` -/
def P3886292162960170429.Spec : Prop :=
  ∀ n, (P3886292162960170429.a n : ℤ) = A027266 n

end A027266

/-! ## A027266.P17812682342192407338

`(n+1)*∏[A010693(n)]/2`
-/

namespace A027266.P17812682342192407338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A027266.P17812682342192407338

namespace A027266

/-- `(n+1)*∏[A010693(n)]/2` -/
def P17812682342192407338.Spec : Prop :=
  ∀ n, P17812682342192407338.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P5046297954102359713

`(n+1)*A026549(n+1)/2`
-/

namespace A027266.P5046297954102359713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A026549 (n + 1) : ℚ) / 2

end

end A027266.P5046297954102359713

namespace A027266

/-- `(n+1)*A026549(n+1)/2` -/
def P5046297954102359713.Spec : Prop :=
  ∀ n, P5046297954102359713.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P14946813250825243511

`(n+1)*A026565(n+1)/3`
-/

namespace A027266.P14946813250825243511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A026565 (n + 1) : ℚ) / 3

end

end A027266.P14946813250825243511

namespace A027266

/-- `(n+1)*A026565(n+1)/3` -/
def P14946813250825243511.Spec : Prop :=
  ∀ n, P14946813250825243511.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P11845617221064897640

`A053469(n+1)/A026549(n)`
-/

namespace A027266.P11845617221064897640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053469 (n + 1) : ℚ) / (A026549 n : ℚ)

end

end A027266.P11845617221064897640

namespace A027266

/-- `A053469(n+1)/A026549(n)` -/
def P11845617221064897640.Spec : Prop :=
  ∀ n, P11845617221064897640.a n = (A027266 n : ℚ)

end A027266

/-! ## A027266.P435690348415662516

`6^n*∑[n]/a(n-1)` with `a(0)=1`
-/

namespace A027266.P435690348415662516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((6 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / a (n - 1)

end

end A027266.P435690348415662516

namespace A027266

/-- `6^n*∑[n]/a(n-1)` -/
def P435690348415662516.Spec : Prop :=
  ∀ n, P435690348415662516.a n = (A027266 n : ℚ)

end A027266

/-!
# A027267: a(n) = self-convolution of row n of array T given by A026536.

The programs for A027267, there is no canonical definition to state claims against.
-/

/-! ## A027267.P11445249437469609693

`A232639(n*floor(2^n/ϕ)²+1)`
-/

namespace A027267.P11445249437469609693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 ((n : ℤ) * ⌊(2 ^ n : ℝ) / Real.goldenRatio⌋ ^ 2 + 1).toNat

end

end A027267.P11445249437469609693

/-!
# A027268: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A026536.

The programs for A027268, there is no canonical definition to state claims against.
-/

/-! ## A027268.P9539000474792386284

`lcm(16, n)/16*A336843(A286827(n))`
-/

namespace A027268.P9539000474792386284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16 * (A336843 (A286827 n).toNat : ℚ)

end

end A027268.P9539000474792386284

/-!
# A027269: a(n) = Sum_{k=0..2n-2} T(n,k) * T(n,k+2), with T given by A026536.

The programs for A027269, there is no canonical definition to state claims against.
-/

/-! ## A027269.P5267097303893740475

`A356297(n+1)+A325836(A259939(2*n))`
-/

namespace A027269.P5267097303893740475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356297 (n + 1) + A325836 (A259939 (2 * n)).toNat

end

end A027269.P5267097303893740475

/-!
# A027271: a(n) = Sum_{k=0..2n} (k+1)*T(n,k), where T is given by A026536.

The programs for A027271, the canonical program `A027271.P4932289863433406634` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027271 has offset 0).

The definition of A027271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027271.P13329548535464686719

`ogf((1+4x+6x^2)/(1-12x^2+36x^4))`
-/

namespace A027271.P13329548535464686719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6] [1, 0, -12, 0, 36] n

end

end A027271.P13329548535464686719

namespace A027271

/-- `ogf((1+4x+6x^2)/(1-12x^2+36x^4))` -/
def P13329548535464686719.Spec : Prop :=
  ∀ n, P13329548535464686719.a n = A027271 n

end A027271

/-! ## A027271.P4932289863433406634

`6^(n/2)*(3*(n+1)%2+sqrt(6)*n%2)*(n+1)/3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A027271

/-- `6^(n/2)*(3*(n+1)%2+sqrt(6)*n%2)*(n+1)/3` -/
def P4932289863433406634.Spec : Prop :=
  ∀ n, P4932289863433406634.a n = (A027271 n : ℝ)

end A027271

/-! ## A027271.P14406994451405831631

`6^(n/2)*((3-sqrt(6))*(-1)^n+3+sqrt(6))*(n+1)/6`
-/

namespace A027271.P14406994451405831631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * ((3 - Real.sqrt (6 : ℝ)) * ((-1) ^ n : ℝ) + (3 + Real.sqrt (6 : ℝ))) * (n + 1 : ℝ) / 6

end

end A027271.P14406994451405831631

namespace A027271

/-- `6^(n/2)*((3-sqrt(6))*(-1)^n+3+sqrt(6))*(n+1)/6` -/
def P14406994451405831631.Spec : Prop :=
  ∀ n, P14406994451405831631.a n = (A027271 n : ℝ)

end A027271

/-! ## A027271.P1481403150395587577

`(n+1)*∏[(n-1)%2+2]`
-/

namespace A027271.P1481403150395587577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P1481403150395587577

namespace A027271

/-- `(n+1)*∏[(n-1)%2+2]` -/
def P1481403150395587577.Spec : Prop :=
  ∀ n, P1481403150395587577.a n = A027271 n

end A027271

/-! ## A027271.P14573496301289436877

`(n+1)*∏[5-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A027271.P14573496301289436877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P14573496301289436877

namespace A027271

/-- `(n+1)*∏[5-a(n-1)]` -/
def P14573496301289436877.Spec : Prop :=
  ∀ n, P14573496301289436877.a n = A027271 n

end A027271

/-! ## A027271.P17459971521569768261

`(n+1)*∑[6*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A027271.P17459971521569768261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P17459971521569768261

namespace A027271

/-- `(n+1)*∑[6*a(n-2)]` -/
def P17459971521569768261.Spec : Prop :=
  ∀ n, (P17459971521569768261.a n : ℤ) = A027271 n

end A027271

/-! ## A027271.P16311437258768696371

`(gcd(2, n)+1)*(a(n-1)+a(n-1)/n)` with `a(0)=1`
-/

namespace A027271.P16311437258768696371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd 2 n + 1 : ℚ) * (a (n - 1) + a (n - 1) / (n : ℚ))

end

end A027271.P16311437258768696371

namespace A027271

/-- `(gcd(2, n)+1)*(a(n-1)+a(n-1)/n)` -/
def P16311437258768696371.Spec : Prop :=
  ∀ n, P16311437258768696371.a n = (A027271 n : ℚ)

end A027271

/-! ## A027271.P1197914921852294810

`(n+1)*A026549(n)`
-/

namespace A027271.P1197914921852294810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026549 n

end

end A027271.P1197914921852294810

namespace A027271

/-- `(n+1)*A026549(n)` -/
def P1197914921852294810.Spec : Prop :=
  ∀ n, P1197914921852294810.a n = A027271 n

end A027271

/-! ## A027271.P15489209830514256630

`(n+1)*record[A100851(n)]`
-/

namespace A027271.P15489209830514256630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027271.P15489209830514256630

namespace A027271

/-- `(n+1)*record[A100851(n)]` -/
def P15489209830514256630.Spec : Prop :=
  ∀ n, P15489209830514256630.a n = A027271 n

end A027271

/-! ## A027271.P5840347467864213101

`(n+1)/3*A026532(n+2)`
-/

namespace A027271.P5840347467864213101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A026532 (n + 2) : ℚ)

end

end A027271.P5840347467864213101

namespace A027271

/-- `(n+1)/3*A026532(n+2)` -/
def P5840347467864213101.Spec : Prop :=
  ∀ n, P5840347467864213101.a n = (A027271 n : ℚ)

end A027271

/-! ## A027271.P2604892226482091171

`(n+1)*∏[A010693(n+1)]/3`
-/

namespace A027271.P2604892226482091171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)

end

end A027271.P2604892226482091171

namespace A027271

/-- `(n+1)*∏[A010693(n+1)]/3` -/
def P2604892226482091171.Spec : Prop :=
  ∀ n, P2604892226482091171.a n = (A027271 n : ℚ)

end A027271

/-! ## A027271.P11969322547163049513

`(n+1)*∏[A020639(3*(n+1))]/3`
-/

namespace A027271.P11969322547163049513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)

end

end A027271.P11969322547163049513

namespace A027271

/-- `(n+1)*∏[A020639(3*(n+1))]/3` -/
def P11969322547163049513.Spec : Prop :=
  ∀ n, P11969322547163049513.a n = (A027271 n : ℚ)

end A027271

/-! ## A027271.P17380304401781030995

`(n+1)*∏[A000040(a((n+1)%2))]` with `a(0)=1`
-/

namespace A027271.P17380304401781030995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 (f1 ((n + 1) % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P17380304401781030995

namespace A027271

/-- `(n+1)*∏[A000040(a((n+1)%2))]` -/
def P17380304401781030995.Spec : Prop :=
  ∀ n, P17380304401781030995.a n = A027271 n

end A027271

/-! ## A027271.P1053397287246818952

`A026549(n)*A242112(2*n)`
-/

namespace A027271.P1053397287246818952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A242112 (2 * n)

end

end A027271.P1053397287246818952

namespace A027271

/-- `A026549(n)*A242112(2*n)` -/
def P1053397287246818952.Spec : Prop :=
  ∀ n, P1053397287246818952.a n = A027271 n

end A027271

/-! ## A027271.P7837330921348772207

`(n+1)*∏[A020639(A267352(n))]`
-/

namespace A027271.P7837330921348772207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P7837330921348772207

namespace A027271

/-- `(n+1)*∏[A020639(A267352(n))]` -/
def P7837330921348772207.Spec : Prop :=
  ∀ n, P7837330921348772207.a n = A027271 n

end A027271

/-! ## A027271.P1149082920861116509

`(n+1)*∏[A134187(A020639(n+1))]`
-/

namespace A027271.P1149082920861116509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134187 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P1149082920861116509

namespace A027271

/-- `(n+1)*∏[A134187(A020639(n+1))]` -/
def P1149082920861116509.Spec : Prop :=
  ∀ n, P1149082920861116509.a n = A027271 n

end A027271

/-! ## A027271.P4144231502853815449

`(n+1)*∏[A020639(A267048(11*n+1))]`
-/

namespace A027271.P4144231502853815449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267048 (11 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027271.P4144231502853815449

namespace A027271

/-- `(n+1)*∏[A020639(A267048(11*n+1))]` -/
def P4144231502853815449.Spec : Prop :=
  ∀ n, P4144231502853815449.a n = A027271 n

end A027271

/-! ## A027271.P17283495018489515960

`(A171647(n+2)-A016116(n+1))*A038754(n)`
-/

namespace A027271.P17283495018489515960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171647 (n + 2) - A016116 (n + 1)) * A038754 n

end

end A027271.P17283495018489515960

namespace A027271

/-- `(A171647(n+2)-A016116(n+1))*A038754(n)` -/
def P17283495018489515960.Spec : Prop :=
  ∀ n, P17283495018489515960.a n = A027271 n

end A027271

/-! ## A027271.P17932705468237190690

`A026565(2*n+1)/A026565(n+1)*(n+1)`
-/

namespace A027271.P17932705468237190690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026565 (2 * n + 1) : ℚ) / (A026565 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A027271.P17932705468237190690

namespace A027271

/-- `A026565(2*n+1)/A026565(n+1)*(n+1)` -/
def P17932705468237190690.Spec : Prop :=
  ∀ n, P17932705468237190690.a n = (A027271 n : ℚ)

end A027271

/-!
# A027272: Self-convolution of row n of array T given by A026552.

The programs for A027272, there is no canonical definition to state claims against.
-/

/-! ## A027272.P1081883000019505273

`∑[A235648(record[A178301(n)])]`
-/

namespace A027272.P1081883000019505273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235648 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027272.P1081883000019505273

/-!
# A027276: a(n) = Sum_{k=0..2n} (k+1) * A026552(n, k).

The programs for A027276, the canonical program `A027276.P17807976514733924573` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027276 has offset 0).

The definition of A027276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027276.P11503679833794294373

`record[6*a(n-3)]*(n+1)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=3`
-/

namespace A027276.P11503679833794294373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 3] fun n f1 =>
  6 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 1)

end

end A027276.P11503679833794294373

namespace A027276

/-- `record[6*a(n-3)]*(n+1)` -/
def P11503679833794294373.Spec : Prop :=
  ∀ n, (P11503679833794294373.a n : ℤ) = A027276 n

end A027276

/-! ## A027276.P17807976514733924573

`(1+n)*A026565(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027276

/-- `(1+n)*A026565(n)` -/
def P17807976514733924573.Spec : Prop :=
  ∀ n, P17807976514733924573.a n = A027276 n

theorem P17807976514733924573.correct : P17807976514733924573.Spec := by
  intro n
  simp only [A027276]

end A027276

/-! ## A027276.P14594937076951773655

`floor(3/2*A027271(n))`
-/

namespace A027276.P14594937076951773655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A027271 n : ℚ)⌋

end

end A027276.P14594937076951773655

namespace A027276

/-- `floor(3/2*A027271(n))` -/
def P14594937076951773655.Spec : Prop :=
  ∀ n, P14594937076951773655.a n = A027276 n

end A027276

/-! ## A027276.P4352001586534697476

`(n+1)*floor(A026532(n+2)/2)`
-/

namespace A027276.P4352001586534697476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A026532 (n + 2) : ℚ) / 2⌋

end

end A027276.P4352001586534697476

namespace A027276

/-- `(n+1)*floor(A026532(n+2)/2)` -/
def P4352001586534697476.Spec : Prop :=
  ∀ n, P4352001586534697476.a n = A027276 n

end A027276

/-! ## A027276.P14606768362984812750

`(1+n)*A100852(A165157(n))`
-/

namespace A027276.P14606768362984812750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A100852 (A165157 n).toNat

end

end A027276.P14606768362984812750

namespace A027276

/-- `(1+n)*A100852(A165157(n))` -/
def P14606768362984812750.Spec : Prop :=
  ∀ n, P14606768362984812750.a n = A027276 n

end A027276

/-! ## A027276.P11773884736717515917

`A026565(n)*A065033(Δ[n²])`
-/

namespace A027276.P11773884736717515917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 n * A065033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027276.P11773884736717515917

namespace A027276

/-- `A026565(n)*A065033(Δ[n²])` -/
def P11773884736717515917.Spec : Prop :=
  ∀ n, P11773884736717515917.a n = A027276 n

end A027276

/-! ## A027276.P10747710847663590008

`(n+1)*∏[A020639(A267048(n+1))]`
-/

namespace A027276.P10747710847663590008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A027276.P10747710847663590008

namespace A027276

/-- `(n+1)*∏[A020639(A267048(n+1))]` -/
def P10747710847663590008.Spec : Prop :=
  ∀ n, P10747710847663590008.a n = A027276 n

end A027276

/-! ## A027276.P1558971850581480689

`A026565(n)*A117905(A008458(n))`
-/

namespace A027276.P1558971850581480689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 n * A117905 (A008458 n).toNat

end

end A027276.P1558971850581480689

namespace A027276

/-- `A026565(n)*A117905(A008458(n))` -/
def P1558971850581480689.Spec : Prop :=
  ∀ n, P1558971850581480689.a n = A027276 n

end A027276

/-! ## A027276.P6259223045608890266

`(n+1)*A247936(A116940(n))`
-/

namespace A027276.P6259223045608890266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A247936 (A116940 n).toNat

end

end A027276.P6259223045608890266

namespace A027276

/-- `(n+1)*A247936(A116940(n))` -/
def P6259223045608890266.Spec : Prop :=
  ∀ n, P6259223045608890266.a n = A027276 n

end A027276

/-!
# A027277: a(n) = Sum_{k=0..n} binomial(2*k,k)*binomial(2*n-k,k).

The programs for A027277, the canonical program `A027277.P13133335662862094414` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027277 has offset 0).

The definition of A027277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*#, #)*C(2*n-#, #)]` (program `A027277.P13133335662862094414`, by `A027277.P13133335662862094414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027277.P13133335662862094414

`∑{#}[n, C(2*#, #)*C(2*n-#, #)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A027277

/-- `∑{#}[n, C(2*#, #)*C(2*n-#, #)]` -/
def P13133335662862094414.Spec : Prop :=
  ∀ n, (P13133335662862094414.a n : ℤ) = A027277 n

theorem P13133335662862094414.correct : P13133335662862094414.Spec := by
  intro n
  simp only [A027277]

end A027277

/-! ## A027277.P8507996855784225689

`A026569(2*n)`
-/

namespace A027277.P8507996855784225689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (2 * n)

end

end A027277.P8507996855784225689

namespace A027277

/-- `A026569(2*n)` -/
def P8507996855784225689.Spec : Prop :=
  ∀ n, P8507996855784225689.a n = A027277 n

end A027277

/-! ## A027277.P1406561841171378551

`∑{#}[2*n, A026585(#)]`
-/

namespace A027277.P1406561841171378551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A026585 k

end

end A027277.P1406561841171378551

namespace A027277

/-- `∑{#}[2*n, A026585(#)]` -/
def P1406561841171378551.Spec : Prop :=
  ∀ n, P1406561841171378551.a n = A027277 n

end A027277

/-! ## A027277.P1704423450689908733

`record[A026569(A014681(n))]`
-/

namespace A027277.P1704423450689908733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P1704423450689908733

namespace A027277

/-- `record[A026569(A014681(n))]` -/
def P1704423450689908733.Spec : Prop :=
  ∀ n, P1704423450689908733.a n = A027277 n

end A027277

/-! ## A027277.P12257253823293607898

`record[A026569(A124625(n))]`
-/

namespace A027277.P12257253823293607898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P12257253823293607898

namespace A027277

/-- `record[A026569(A124625(n))]` -/
def P12257253823293607898.Spec : Prop :=
  ∀ n, P12257253823293607898.a n = A027277 n

end A027277

/-! ## A027277.P8710805814215415264

`or(1, A026569(A005843(n)))`
-/

namespace A027277.P8710805814215415264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026569 (A005843 n).toNat)

end

end A027277.P8710805814215415264

namespace A027277

/-- `or(1, A026569(A005843(n)))` -/
def P8710805814215415264.Spec : Prop :=
  ∀ n, P8710805814215415264.a n = A027277 n

end A027277

/-! ## A027277.P7169033038367420434

`record[A026569(n)/A010685(n)]`
-/

namespace A027277.P7169033038367420434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P7169033038367420434

namespace A027277

/-- `record[A026569(n)/A010685(n)]` -/
def P7169033038367420434.Spec : Prop :=
  ∀ n, P7169033038367420434.a n = (A027277 n : ℚ)

end A027277

/-! ## A027277.P11719031006253318099

`record[A026569(n)/A010688(n)]`
-/

namespace A027277.P11719031006253318099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026569 n : ℚ) / (A010688 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P11719031006253318099

namespace A027277

/-- `record[A026569(n)/A010688(n)]` -/
def P11719031006253318099.Spec : Prop :=
  ∀ n, P11719031006253318099.a n = (A027277 n : ℚ)

end A027277

/-! ## A027277.P7656876738788194900

`record[root(A026569(n), A000034(n))]`
-/

namespace A027277.P7656876738788194900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026569 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P7656876738788194900

namespace A027277

/-- `record[root(A026569(n), A000034(n))]` -/
def P7656876738788194900.Spec : Prop :=
  ∀ n, P7656876738788194900.a n = (A027277 n : ℝ)

end A027277

/-! ## A027277.P5676295880694338098

`record[A026569(and(n, A105812(n)))]`
-/

namespace A027277.P5676295880694338098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (Int.land (n : ℤ) (A105812 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P5676295880694338098

namespace A027277

/-- `record[A026569(and(n, A105812(n)))]` -/
def P5676295880694338098.Spec : Prop :=
  ∀ n, P5676295880694338098.a n = A027277 n

end A027277

/-! ## A027277.P10026754718060927387

`record[A134451(n)^log2(A026569(n))]`
-/

namespace A027277.P10026754718060927387
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134451 n : ℝ) ^ (Real.logb 2 (A026569 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P10026754718060927387

namespace A027277

/-- `record[A134451(n)^log2(A026569(n))]` -/
def P10026754718060927387.Spec : Prop :=
  ∀ n, P10026754718060927387.a n = (A027277 n : ℝ)

end A027277

/-! ## A027277.P5523204431471259144

`record[A026569(n-A105812(n+1))]`
-/

namespace A027277.P5523204431471259144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 ((n : ℤ) - A105812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P5523204431471259144

namespace A027277

/-- `record[A026569(n-A105812(n+1))]` -/
def P5523204431471259144.Spec : Prop :=
  ∀ n, P5523204431471259144.a n = A027277 n

end A027277

/-! ## A027277.P13353157821082582035

`record[A026569(A004275(A008612(n)))]`
-/

namespace A027277.P13353157821082582035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (A004275 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P13353157821082582035

namespace A027277

/-- `record[A026569(A004275(A008612(n)))]` -/
def P13353157821082582035.Spec : Prop :=
  ∀ n, P13353157821082582035.a n = A027277 n

end A027277

/-! ## A027277.P13508375406198970895

`record[A026569(A004275(A230149(n+1)))]`
-/

namespace A027277.P13508375406198970895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 (A004275 (A230149 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027277.P13508375406198970895

namespace A027277

/-- `record[A026569(A004275(A230149(n+1)))]` -/
def P13508375406198970895.Spec : Prop :=
  ∀ n, P13508375406198970895.a n = A027277 n

end A027277

/-! ## A027277.P17673062615548462920

`2*A026580(2*n)-A026581(2*n)`
-/

namespace A027277.P17673062615548462920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026580 (2 * n) - A026581 (2 * n)

end

end A027277.P17673062615548462920

namespace A027277

/-- `2*A026580(2*n)-A026581(2*n)` -/
def P17673062615548462920.Spec : Prop :=
  ∀ n, P17673062615548462920.a n = A027277 n

end A027277

/-! ## A027277.P2449477849391098677

`2*A026598(2*n)-A026599(2*n)`
-/

namespace A027277.P2449477849391098677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026598 (2 * n) - A026599 (2 * n)

end

end A027277.P2449477849391098677

namespace A027277

/-- `2*A026598(2*n)-A026599(2*n)` -/
def P2449477849391098677.Spec : Prop :=
  ∀ n, P2449477849391098677.a n = A027277 n

end A027277

/-!
# A027278: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A026568.

The programs for A027278, there is no canonical definition to state claims against.
-/

/-! ## A027278.P2347140987900942383

`A026585(2*n+3)-A027283(n+1)`
-/

namespace A027278.P2347140987900942383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (2 * n + 3) - A027283 (n + 1)

end

end A027278.P2347140987900942383

/-! ## A027278.P7731268320406270617

`record[A026585(A198954(n+1))]-A027283(n+1)`
-/

namespace A027278.P7731268320406270617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (A198954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A027283 (n + 1)

end

end A027278.P7731268320406270617

/-!
# A027279: a(n) = Sum_{k=0..2n-2} T(n,k) * T(n,k+2), with T given by A026568.

The programs for A027279, the canonical program `A027279.P15337363241180830114` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027279 has offset 2).

The definition of A027279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027279.P15337363241180830114

`A026571(2*(2+n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027279

/-- `A026571(2*(2+n))` -/
def P15337363241180830114.Spec : Prop :=
  ∀ n, P15337363241180830114.a n = A027279 (n + 2)

theorem P15337363241180830114.correct : P15337363241180830114.Spec := by
  intro n
  simp only [A027279, Nat.add_sub_cancel]

end A027279

/-! ## A027279.P8918163782177255231

`record[A026571(A014681(n+3))]`
-/

namespace A027279.P8918163782177255231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026571 (A014681 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027279.P8918163782177255231

namespace A027279

/-- `record[A026571(A014681(n+3))]` -/
def P8918163782177255231.Spec : Prop :=
  ∀ n, P8918163782177255231.a n = A027279 (n + 2)

end A027279

/-! ## A027279.P4278732086211802626

`record[A026571(A198954(n)+3)]`
-/

namespace A027279.P4278732086211802626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026571 (A198954 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027279.P4278732086211802626

namespace A027279

/-- `record[A026571(A198954(n)+3)]` -/
def P4278732086211802626.Spec : Prop :=
  ∀ n, P4278732086211802626.a n = A027279 (n + 2)

end A027279

/-! ## A027279.P2434407623121041784

`A026568(A028387(2*n+3))`
-/

namespace A027279.P2434407623121041784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A028387 (2 * n + 3)).toNat

end

end A027279.P2434407623121041784

namespace A027279

/-- `A026568(A028387(2*n+3))` -/
def P2434407623121041784.Spec : Prop :=
  ∀ n, P2434407623121041784.a n = A027279 (n + 2)

end A027279

/-! ## A027279.P1182862350191776051

`A026568(A081353(2*n+3))`
-/

namespace A027279.P1182862350191776051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (A081353 (2 * n + 3)).toNat

end

end A027279.P1182862350191776051

namespace A027279

/-- `A026568(A081353(2*n+3))` -/
def P1182862350191776051.Spec : Prop :=
  ∀ n, P1182862350191776051.a n = A027279 (n + 2)

end A027279

/-!
# A027281: a(n) = Sum_{k=0..2n} (k+1) * A026568(n, k).

The programs for A027281, the canonical program `A027281.P8188970677507699245` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027281 has offset 0).

The definition of A027281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027281.P8188970677507699245

`ogf((1+4x+2x^2)/(1-2x-7x^2+8x^3+16x^4))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A027281

/-- `ogf((1+4x+2x^2)/(1-2x-7x^2+8x^3+16x^4))` -/
def P8188970677507699245.Spec : Prop :=
  ∀ n, P8188970677507699245.a n = A027281 n

theorem P8188970677507699245.correct : P8188970677507699245.Spec := by
  intro n
  simp only [A027281]

end A027281

/-! ## A027281.P6567654581972495953

`(n+1)*∑[a(n-1)+4*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A027281.P6567654581972495953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027281.P6567654581972495953

namespace A027281

/-- `(n+1)*∑[a(n-1)+4*a(n-2)]` -/
def P6567654581972495953.Spec : Prop :=
  ∀ n, (P6567654581972495953.a n : ℤ) = A027281 n

end A027281

/-! ## A027281.P10498595768657872292

`(1+n)*A026581(n)`
-/

namespace A027281.P10498595768657872292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A026581 n

end

end A027281.P10498595768657872292

namespace A027281

/-- `(1+n)*A026581(n)` -/
def P10498595768657872292.Spec : Prop :=
  ∀ n, P10498595768657872292.a n = A027281 n

end A027281

/-! ## A027281.P6142545479930565343

`(n+1)*Δ[A026599(n)/2]`
-/

namespace A027281.P6142545479930565343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026599 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A027281.P6142545479930565343

namespace A027281

/-- `(n+1)*Δ[A026599(n)/2]` -/
def P6142545479930565343.Spec : Prop :=
  ∀ n, P6142545479930565343.a n = (A027281 n : ℚ)

end A027281

/-! ## A027281.P6784369331094744514

`(n+1)/2*A026597(n+1)`
-/

namespace A027281.P6784369331094744514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A026597 (n + 1) : ℚ)

end

end A027281.P6784369331094744514

namespace A027281

/-- `(n+1)/2*A026597(n+1)` -/
def P6784369331094744514.Spec : Prop :=
  ∀ n, P6784369331094744514.a n = (A027281 n : ℚ)

end A027281

/-! ## A027281.P12470297411372031938

`abs((n+1)*A122112(n+1)/2)`
-/

namespace A027281.P12470297411372031938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) * ((A122112 (n + 1) : ℚ) / 2)|

end

end A027281.P12470297411372031938

namespace A027281

/-- `abs((n+1)*A122112(n+1)/2)` -/
def P12470297411372031938.Spec : Prop :=
  ∀ n, P12470297411372031938.a n = (A027281 n : ℚ)

end A027281

/-! ## A027281.P12915288646837979985

`(n+1)*A208764(∑[n+1])`
-/

namespace A027281.P12915288646837979985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027281.P12915288646837979985

namespace A027281

/-- `(n+1)*A208764(∑[n+1])` -/
def P12915288646837979985.Spec : Prop :=
  ∀ n, P12915288646837979985.a n = A027281 n

end A027281

/-! ## A027281.P1548732176652984679

`(n+1)*A208766(∑[n+1])`
-/

namespace A027281.P1548732176652984679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027281.P1548732176652984679

namespace A027281

/-- `(n+1)*A208766(∑[n+1])` -/
def P1548732176652984679.Spec : Prop :=
  ∀ n, P1548732176652984679.a n = A027281 n

end A027281

/-! ## A027281.P6022892559596542969

`(n+1)*A208916(∑[n+1])`
-/

namespace A027281.P6022892559596542969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208916 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027281.P6022892559596542969

namespace A027281

/-- `(n+1)*A208916(∑[n+1])` -/
def P6022892559596542969.Spec : Prop :=
  ∀ n, P6022892559596542969.a n = A027281 n

end A027281

/-! ## A027281.P4219661250924842825

`(n+1)*A208920(∑[n+1])`
-/

namespace A027281.P4219661250924842825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027281.P4219661250924842825

namespace A027281

/-- `(n+1)*A208920(∑[n+1])` -/
def P4219661250924842825.Spec : Prop :=
  ∀ n, P4219661250924842825.a n = A027281 n

end A027281

/-! ## A027281.P8663490474618640353

`A208766(∑[n+2])`
-/

namespace A027281.P8663490474618640353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027281.P8663490474618640353

namespace A027281

/-- `A208766(∑[n+2])` -/
def P8663490474618640353.Spec : Prop :=
  ∀ n, P8663490474618640353.a n = A027281 n

end A027281

/-!
# A027282: a(n) = self-convolution of row n of array T given by A026584.

The programs for A027282, the canonical program `A027282.P4320995479671935071` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027282 has offset 0).

The definition of A027282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027282.P16049635637780186903

`A026585(2*n)`
-/

namespace A027282.P16049635637780186903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (2 * n)

end

end A027282.P16049635637780186903

namespace A027282

/-- `A026585(2*n)` -/
def P16049635637780186903.Spec : Prop :=
  ∀ n, P16049635637780186903.a n = A027282 n

end A027282

/-! ## A027282.P7395526963041483965

`record[gcd(n%2, A026585(n))]`
-/

namespace A027282.P7395526963041483965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A026585 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027282.P7395526963041483965

namespace A027282

/-- `record[gcd(n%2, A026585(n))]` -/
def P7395526963041483965.Spec : Prop :=
  ∀ n, (P7395526963041483965.a n : ℤ) = A027282 n

end A027282

/-! ## A027282.P3377460758176609561

`record[A026585(A004275(n))]`
-/

namespace A027282.P3377460758176609561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027282.P3377460758176609561

namespace A027282

/-- `record[A026585(A004275(n))]` -/
def P3377460758176609561.Spec : Prop :=
  ∀ n, P3377460758176609561.a n = A027282 n

end A027282

/-! ## A027282.P11930510145907480171

`record[A026585(A014681(n))]`
-/

namespace A027282.P11930510145907480171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027282.P11930510145907480171

namespace A027282

/-- `record[A026585(A014681(n))]` -/
def P11930510145907480171.Spec : Prop :=
  ∀ n, P11930510145907480171.a n = A027282 n

end A027282

/-! ## A027282.P14232495362485661759

`record[A026585(A350229(n))]`
-/

namespace A027282.P14232495362485661759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (A350229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027282.P14232495362485661759

namespace A027282

/-- `record[A026585(A350229(n))]` -/
def P14232495362485661759.Spec : Prop :=
  ∀ n, P14232495362485661759.a n = A027282 n

end A027282

/-! ## A027282.P2587480452253869476

`record[lcm(A026585(n), A056594(n))]`
-/

namespace A027282.P2587480452253869476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026585 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027282.P2587480452253869476

namespace A027282

/-- `record[lcm(A026585(n), A056594(n))]` -/
def P2587480452253869476.Spec : Prop :=
  ∀ n, (P2587480452253869476.a n : ℤ) = A027282 n

end A027282

/-! ## A027282.P15078983391867151736

`record[A026585(comp[A109613(n+2)])]`
-/

namespace A027282.P15078983391867151736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027282.P15078983391867151736

namespace A027282

/-- `record[A026585(comp[A109613(n+2)])]` -/
def P15078983391867151736.Spec : Prop :=
  ∀ n, P15078983391867151736.a n = A027282 n

end A027282

/-! ## A027282.P4320995479671935071

`2*A026596(2*n)-A026597(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027282

/-- `2*A026596(2*n)-A026597(2*n)` -/
def P4320995479671935071.Spec : Prop :=
  ∀ n, P4320995479671935071.a n = A027282 n

theorem P4320995479671935071.correct : P4320995479671935071.Spec := by
  intro n
  simp only [A027282]

end A027282

/-! ## A027282.P6234821332897173223

`A026584(A002943(n)+1)`
-/

namespace A027282.P6234821332897173223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A002943 n + 1).toNat

end

end A027282.P6234821332897173223

namespace A027282

/-- `A026584(A002943(n)+1)` -/
def P6234821332897173223.Spec : Prop :=
  ∀ n, P6234821332897173223.a n = A027282 n

end A027282

/-! ## A027282.P3243684171181166308

`A026584(A054569(n+1))`
-/

namespace A027282.P3243684171181166308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A054569 (n + 1)).toNat

end

end A027282.P3243684171181166308

namespace A027282

/-- `A026584(A054569(n+1))` -/
def P3243684171181166308.Spec : Prop :=
  ∀ n, P3243684171181166308.a n = A027282 n

end A027282

/-!
# A027283: a(n) = Sum_{k=0..2*n-1} T(n,k) * T(n,k+1), with T given by A026584.

The programs for A027283, there is no canonical definition to state claims against.
-/

/-! ## A027283.P16875509177436758504

`A026585(2*n+3)-A027278(n+1)`
-/

namespace A027283.P16875509177436758504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (2 * n + 3) - A027278 (n + 1)

end

end A027283.P16875509177436758504

/-! ## A027283.P7776411095526274405

`A026585(2*(n+1)+1)%A027278(n+1)`
-/

namespace A027283.P7776411095526274405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026585 (2 * (n + 1) + 1)) (A027278 (n + 1))

end

end A027283.P7776411095526274405

/-! ## A027283.P5297947268968717353

`record[A026585(A198954(n+1))]-A027278(n+1)`
-/

namespace A027283.P5297947268968717353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (A198954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A027278 (n + 1)

end

end A027283.P5297947268968717353

/-!
# A027284: a(n) = Sum_{k=0..2*n-2} T(n,k) * T(n,k+2), with T given by A026584.

The programs for A027284, the canonical program `A027284.P17094632858826431175` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027284 has offset 2).

The definition of A027284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027284.P17094632858826431175

`A026587(2*(2+n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027284

/-- `A026587(2*(2+n))` -/
def P17094632858826431175.Spec : Prop :=
  ∀ n, P17094632858826431175.a n = A027284 (n + 2)

theorem P17094632858826431175.correct : P17094632858826431175.Spec := by
  intro n
  simp only [A027284, Nat.add_sub_cancel]

end A027284

/-! ## A027284.P8569059553684915736

`record[A026587(A198954(n)+3)]`
-/

namespace A027284.P8569059553684915736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026587 (A198954 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027284.P8569059553684915736

namespace A027284

/-- `record[A026587(A198954(n)+3)]` -/
def P8569059553684915736.Spec : Prop :=
  ∀ n, P8569059553684915736.a n = A027284 (n + 2)

end A027284

/-! ## A027284.P7501890939917821694

`record[A026587(A060819(n+1)+3)]`
-/

namespace A027284.P7501890939917821694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026587 (A060819 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027284.P7501890939917821694

namespace A027284

/-- `record[A026587(A060819(n+1)+3)]` -/
def P7501890939917821694.Spec : Prop :=
  ∀ n, P7501890939917821694.a n = A027284 (n + 2)

end A027284

/-! ## A027284.P6525688430709086094

`A026571(2*(n+2))-A026571(2*n+3)`
-/

namespace A027284.P6525688430709086094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026571 (2 * (n + 2)) - A026571 (2 * n + 3)

end

end A027284.P6525688430709086094

namespace A027284

/-- `A026571(2*(n+2))-A026571(2*n+3)` -/
def P6525688430709086094.Spec : Prop :=
  ∀ n, P6525688430709086094.a n = A027284 (n + 2)

end A027284

/-! ## A027284.P5319081227546993149

`A026584(A028387(2*n+3))`
-/

namespace A027284.P5319081227546993149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A028387 (2 * n + 3)).toNat

end

end A027284.P5319081227546993149

namespace A027284

/-- `A026584(A028387(2*n+3))` -/
def P5319081227546993149.Spec : Prop :=
  ∀ n, P5319081227546993149.a n = A027284 (n + 2)

end A027284

/-!
# A027286: a(n) = Sum_{k=0..2n} (k+1) * A026584(n, k).

The programs for A027286, the canonical program `A027286.P11856469903760055441` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027286 has offset 0).

The definition of A027286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027286.P11463383332219151182

`ogf((1+2x+3x^2)/(1-2x-7x^2+8x^3+16x^4))`
-/

namespace A027286.P11463383332219151182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -2, -7, 8, 16] n

end

end A027286.P11463383332219151182

namespace A027286

/-- `ogf((1+2x+3x^2)/(1-2x-7x^2+8x^3+16x^4))` -/
def P11463383332219151182.Spec : Prop :=
  ∀ n, P11463383332219151182.a n = A027286 n

end A027286

/-! ## A027286.P11856469903760055441

`2*a(n-1)+7*a(n-2)-8*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=4, a(2)=18, a(3)=56`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A027286

/-- `2*a(n-1)+7*a(n-2)-8*a(n-3)-16*a(n-4)` -/
def P11856469903760055441.Spec : Prop :=
  ∀ n, P11856469903760055441.a n = A027286 n

theorem P11856469903760055441.correct : P11856469903760055441.Spec := by
  intro n
  simp only [A027286]

end A027286

/-! ## A027286.P10111028910863767463

`(n+1)*∑{#}[n, C(floor((2*n-#)/2), n-#)*4^floor(#/2)]`
-/

namespace A027286.P10111028910863767463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose ⌊((2 * n : ℤ) - (k : ℤ) : ℚ) / 2⌋.toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) * (4 : ℚ) ^ (⌊(k : ℚ) / 2⌋ : ℤ))

end

end A027286.P10111028910863767463

namespace A027286

/-- `(n+1)*∑{#}[n, C(floor((2*n-#)/2), n-#)*4^floor(#/2)]` -/
def P10111028910863767463.Spec : Prop :=
  ∀ n, P10111028910863767463.a n = (A027286 n : ℚ)

end A027286

/-! ## A027286.P10084084643045005266

`(1+n)*A026597(n)`
-/

namespace A027286.P10084084643045005266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A026597 n

end

end A027286.P10084084643045005266

namespace A027286

/-- `(1+n)*A026597(n)` -/
def P10084084643045005266.Spec : Prop :=
  ∀ n, P10084084643045005266.a n = A027286 n

end A027286

/-! ## A027286.P9712624483905526321

`abs((n+1)*A122112(n))`
-/

namespace A027286.P9712624483905526321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A122112 n|

end

end A027286.P9712624483905526321

namespace A027286

/-- `abs((n+1)*A122112(n))` -/
def P9712624483905526321.Spec : Prop :=
  ∀ n, P9712624483905526321.a n = A027286 n

end A027286

/-! ## A027286.P15243609449391302401

`(n+1)*Δ[A026581(n)/2]`
-/

namespace A027286.P15243609449391302401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A027286.P15243609449391302401

namespace A027286

/-- `(n+1)*Δ[A026581(n)/2]` -/
def P15243609449391302401.Spec : Prop :=
  ∀ n, P15243609449391302401.a n = (A027286 n : ℚ)

end A027286

/-! ## A027286.P9010006920504001101

`(n+1)*A159612(n+2)/4`
-/

namespace A027286.P9010006920504001101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A159612 (n + 2) : ℚ) / 4)

end

end A027286.P9010006920504001101

namespace A027286

/-- `(n+1)*A159612(n+2)/4` -/
def P9010006920504001101.Spec : Prop :=
  ∀ n, P9010006920504001101.a n = (A027286 n : ℚ)

end A027286

/-! ## A027286.P7842359033267021237

`(n+1)*(A102446(n)-A052923(n))`
-/

namespace A027286.P7842359033267021237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A102446 n - A052923 n)

end

end A027286.P7842359033267021237

namespace A027286

/-- `(n+1)*(A102446(n)-A052923(n))` -/
def P7842359033267021237.Spec : Prop :=
  ∀ n, P7842359033267021237.a n = A027286 n

end A027286

/-! ## A027286.P12541263372103700749

`(n+1)*gcd(A000038(n), A122112(n))`
-/

namespace A027286.P12541263372103700749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A000038 n) (A122112 n)

end

end A027286.P12541263372103700749

namespace A027286

/-- `(n+1)*gcd(A000038(n), A122112(n))` -/
def P12541263372103700749.Spec : Prop :=
  ∀ n, (P12541263372103700749.a n : ℤ) = A027286 n

end A027286

/-! ## A027286.P13280375018502746179

`(n+1)*(2*A026596(n)-A026585(n))`
-/

namespace A027286.P13280375018502746179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A026596 n - A026585 n)

end

end A027286.P13280375018502746179

namespace A027286

/-- `(n+1)*(2*A026596(n)-A026585(n))` -/
def P13280375018502746179.Spec : Prop :=
  ∀ n, P13280375018502746179.a n = A027286 n

end A027286

/-! ## A027286.P2839076902911658

`(n+1)*(2*A006131(n)-A052923(n))`
-/

namespace A027286.P2839076902911658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A006131 n - A052923 n)

end

end A027286.P2839076902911658

namespace A027286

/-- `(n+1)*(2*A006131(n)-A052923(n))` -/
def P2839076902911658.Spec : Prop :=
  ∀ n, P2839076902911658.a n = A027286 n

end A027286

/-! ## A027286.P18249778692359378842

`(n+1)*A208763(∑[n+1])`
-/

namespace A027286.P18249778692359378842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027286.P18249778692359378842

namespace A027286

/-- `(n+1)*A208763(∑[n+1])` -/
def P18249778692359378842.Spec : Prop :=
  ∀ n, P18249778692359378842.a n = A027286 n

end A027286

/-! ## A027286.P10183313637827133661

`(n+1)*A208765(∑[n+1])`
-/

namespace A027286.P10183313637827133661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027286.P10183313637827133661

namespace A027286

/-- `(n+1)*A208765(∑[n+1])` -/
def P10183313637827133661.Spec : Prop :=
  ∀ n, P10183313637827133661.a n = A027286 n

end A027286

/-! ## A027286.P4922052048241065453

`(n+1)*A208915(∑[n+1])`
-/

namespace A027286.P4922052048241065453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027286.P4922052048241065453

namespace A027286

/-- `(n+1)*A208915(∑[n+1])` -/
def P4922052048241065453.Spec : Prop :=
  ∀ n, P4922052048241065453.a n = A027286 n

end A027286

/-! ## A027286.P985279606163973103

`(n+1)*A208919(∑[n+1])`
-/

namespace A027286.P985279606163973103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027286.P985279606163973103

namespace A027286

/-- `(n+1)*A208919(∑[n+1])` -/
def P985279606163973103.Spec : Prop :=
  ∀ n, P985279606163973103.a n = A027286 n

end A027286

/-! ## A027286.P6588117991811023060

`A208765(∑[n+2])`
-/

namespace A027286.P6588117991811023060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027286.P6588117991811023060

namespace A027286

/-- `A208765(∑[n+2])` -/
def P6588117991811023060.Spec : Prop :=
  ∀ n, P6588117991811023060.a n = A027286 n

end A027286

/-! ## A027286.P5329086193112252246

`record[A208765(n+2)/A208763(n+4)]`
-/

namespace A027286.P5329086193112252246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208765 (n + 2) : ℚ) / (A208763 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027286.P5329086193112252246

namespace A027286

/-- `record[A208765(n+2)/A208763(n+4)]` -/
def P5329086193112252246.Spec : Prop :=
  ∀ n, P5329086193112252246.a n = (A027286 n : ℚ)

end A027286

/-!
# A027287: Self-convolution of array T given by A026009.

The programs for A027287, there is no canonical definition to state claims against.
-/

/-! ## A027287.P14002130721669135707

`∏{e}[(n+1)!², #+1]-record[A299554(n+1)]`
-/

namespace A027287.P14002130721669135707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A027287.P14002130721669135707

/-! ## A027287.P11690373168430350790

`A088384(A064934(n))`
-/

namespace A027287.P11690373168430350790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088384 (A064934 n).toNat

end

end A027287.P11690373168430350790

/-!
# A027288: a(n) = Sum_{k=0..floor(n/2)} T(n,k) * T(n,k+1), with T given by A026009.

The programs for A027288, there is no canonical definition to state claims against.
-/

/-! ## A027288.P13522041570860153033

`A180144(n)-A096008(A321652(n))`
-/

namespace A027288.P13522041570860153033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n - A096008 (A321652 n).toNat

end

end A027288.P13522041570860153033

/-! ## A027288.P1084678784184101735

`A125977(A147912(n+1))+A000096(n)`
-/

namespace A027288.P1084678784184101735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 (A147912 (n + 1)).toNat + A000096 n

end

end A027288.P1084678784184101735

/-!
# A027289: a(n) = Sum_{k=0..floor(n/2)-1} T(n,k) * T(n,k+2), with T given by A026009.

The programs for A027289, there is no canonical definition to state claims against.
-/

/-! ## A027289.P17397189495567569315

`A291636(A386569(n)²)+2*n`
-/

namespace A027289.P17397189495567569315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (A386569 n ^ 2).toNat + (2 * n : ℤ)

end

end A027289.P17397189495567569315

/-!
# A027291: a(n) = Sum_{k=0..floor(n/2)+1} (k+1) * A026009(n, k).

The programs for A027291, there is no canonical definition to state claims against.
-/

/-! ## A027291.P10818822622568199586

`A113177(A141769(n+1))+A070933(n)`
-/

namespace A027291.P10818822622568199586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (A141769 (n + 1)).toNat + A070933 n

end

end A027291.P10818822622568199586

/-! ## A027291.P9255633089787483588

`A191389(n+4)+A001221(A005251(3*(n+1)))`
-/

namespace A027291.P9255633089787483588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (n + 4) + A001221 (A005251 (3 * (n + 1))).toNat

end

end A027291.P9255633089787483588

/-!
# A027292: a(n) = Sum_{k=0..m} (k+1) * A026009(n, m-k) where m = floor(n/2)+1.

The programs for A027292, the canonical program `A027292.P9259008184868754031` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027292 has offset 0).

The definition of A027292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027292.P9259008184868754031

`Δ[A095121(n)-A294175(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027292

/-- `Δ[A095121(n)-A294175(n)]` -/
def P9259008184868754031.Spec : Prop :=
  ∀ n, P9259008184868754031.a n = A027292 n

theorem P9259008184868754031.correct : P9259008184868754031.Spec := by
  intro n
  simp only [A027292]

end A027292

/-! ## A027292.P5843302915150076017

`Δ[A102363(A080476(n+1)+1)]`
-/

namespace A027292.P5843302915150076017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A080476 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027292.P5843302915150076017

namespace A027292

/-- `Δ[A102363(A080476(n+1)+1)]` -/
def P5843302915150076017.Spec : Prop :=
  ∀ n, P5843302915150076017.a n = A027292 n

end A027292

/-! ## A027292.P10866043555461087689

`Δ[A163866(A183218(A000124(n)))]`
-/

namespace A027292.P10866043555461087689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (A183218 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027292.P10866043555461087689

namespace A027292

/-- `Δ[A163866(A183218(A000124(n)))]` -/
def P10866043555461087689.Spec : Prop :=
  ∀ n, P10866043555461087689.a n = A027292 n

end A027292

/-! ## A027292.P7321247791752839009

`Δ[A102363(A065033(n)+A000124(n))]`
-/

namespace A027292.P7321247791752839009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A065033 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027292.P7321247791752839009

namespace A027292

/-- `Δ[A102363(A065033(n)+A000124(n))]` -/
def P7321247791752839009.Spec : Prop :=
  ∀ n, P7321247791752839009.a n = A027292 n

end A027292

/-! ## A027292.P13287365393707530258

`A102363(A028242(∑[A223134(n)]))`
-/

namespace A027292.P13287365393707530258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A027292.P13287365393707530258

namespace A027292

/-- `A102363(A028242(∑[A223134(n)]))` -/
def P13287365393707530258.Spec : Prop :=
  ∀ n, P13287365393707530258.a n = A027292 n

end A027292

/-!
# A027293: Triangular array given by rows: P(n,k) is the number of partitions of n that contain k as a part.

The programs for A027293, there is no canonical definition to state claims against.
-/

/-! ## A027293.P12556823473735361648

`A000041(row(n)-col(n))`
-/

namespace A027293.P12556823473735361648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A027293.P12556823473735361648

/-! ## A027293.P17133374844336291837

`A116598(n)+T(n-1,k)` with `a(0)=1`
-/

namespace A027293.P17133374844336291837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116598 n + SequenceMachineLib.triUp a n

end

end A027293.P17133374844336291837

/-! ## A027293.P6234394337580340819

`gcd(T(n-1,k-1), A221529(n+1))` with `a(0)=1`
-/

namespace A027293.P6234394337580340819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (A221529 (n + 1))

end

end A027293.P6234394337580340819

/-! ## A027293.P14102771748429059130

`sqrt(A001255(row(n)-col(n)))`
-/

namespace A027293.P14102771748429059130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℝ)

end

end A027293.P14102771748429059130

/-! ## A027293.P2437186005970455096

`1+A000065(row(n)-col(n))`
-/

namespace A027293.P2437186005970455096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A027293.P2437186005970455096

/-! ## A027293.P11881958092271010328

`A035363(2*(row(n)-col(n)))`
-/

namespace A027293.P11881958092271010328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A027293.P11881958092271010328

/-! ## A027293.P4962262277350672251

`A194543(C(row(n)+1-col(n), 2))`
-/

namespace A027293.P4962262277350672251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (Nat.choose ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat 2)

end

end A027293.P4962262277350672251

/-! ## A027293.P6704748041364043675

`A256193(C(row(n)+1-col(n), 2))`
-/

namespace A027293.P6704748041364043675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (Nat.choose ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat 2)

end

end A027293.P6704748041364043675

/-! ## A027293.P6261381813793304024

`A000041(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A027293.P6261381813793304024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A027293.P6261381813793304024

/-! ## A027293.P3381470908735673596

`A000041(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A027293.P3381470908735673596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A027293.P3381470908735673596

/-! ## A027293.P6202786033762004835

`A035363(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A027293.P6202786033762004835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A027293.P6202786033762004835

/-! ## A027293.P11853373596799123803

`A119620(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A027293.P11853373596799123803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A027293.P11853373596799123803

/-! ## A027293.P16405699895514696331

`A119620(2*(C(comp[∑[n]]-n, 2)-n)-1)`
-/

namespace A027293.P16405699895514696331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1).toNat

end

end A027293.P16405699895514696331

/-! ## A027293.P15071802867153641297

`A139582(C(comp[∑[n]]-n, 2)-(n+1))/2`
-/

namespace A027293.P15071802867153641297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ) / 2

end

end A027293.P15071802867153641297

/-! ## A027293.P4866174573506964844

`A000041(A025581(n))`
-/

namespace A027293.P4866174573506964844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat

end

end A027293.P4866174573506964844

/-! ## A027293.P508187731975219639

`A119620(A099375(n))`
-/

namespace A027293.P508187731975219639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A099375 n).toNat

end

end A027293.P508187731975219639

/-! ## A027293.P9979071365491658644

`A000041(log2(A130321(n)))`
-/

namespace A027293.P9979071365491658644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A027293.P9979071365491658644

/-! ## A027293.P5328057824345359717

`A119620(A185782(n+1))`
-/

namespace A027293.P5328057824345359717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A185782 (n + 1)).toNat

end

end A027293.P5328057824345359717

/-! ## A027293.P18021399999099898540

`A035363(2*A025581(n))`
-/

namespace A027293.P18021399999099898540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A025581 n).toNat

end

end A027293.P18021399999099898540

/-! ## A027293.P480776925650191922

`A000041(val(A036561(n), 2))`
-/

namespace A027293.P480776925650191922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A027293.P480776925650191922

/-!
# A027294: Self-convolution of row n of array T given by A026022.

The programs for A027294, there is no canonical definition to state claims against.
-/

/-! ## A027294.P14613919310437699322

`A319840(∏[record[(n+1)/∏{p}[n+1, #]]])`
-/

namespace A027294.P14613919310437699322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319840 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027294.P14613919310437699322

/-! ## A027294.P9524805821760361357

`A144000(A105968(n))`
-/

namespace A027294.P9524805821760361357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (A105968 n).toNat

end

end A027294.P9524805821760361357

/-!
# A027295: a(n) = Sum_{k=0..m-1} T(n,k) * T(n,k+1), where m=n for n=0,1 and m=floor((n+3)/2) for n >= 2, and T given by A026022.

The programs for A027295, there is no canonical definition to state claims against.
-/

/-! ## A027295.P14130849732021394072

`∑[A109492(∑[A098504(n)])]`
-/

namespace A027295.P14130849732021394072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109492 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027295.P14130849732021394072

/-! ## A027295.P7509399620970259166

`A130137(3*n)-A070434(A372511((n+1)!)-C(n, 5))`
-/

namespace A027295.P7509399620970259166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 (3 * n) - A070434 (A372511 (Nat.factorial (n + 1)) - (Nat.choose n 5 : ℤ)).toNat

end

end A027295.P7509399620970259166

/-!
# A027296: a(n) = Sum_{k=0..floor((n-1)/2)} T(n,k) * T(n,k+2), with T given by A026022.

The programs for A027296, there is no canonical definition to state claims against.
-/

/-! ## A027296.P10174750757890927113

`A342086(A078945(n))+A080674(n)`
-/

namespace A027296.P10174750757890927113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342086 (A078945 n).toNat + A080674 n

end

end A027296.P10174750757890927113

/-!
# A027297: a(n) = Sum_{k=0..floor((n-3)/2)} T(n,k) * T(n,k+3), with T given by A026022.

The programs for A027297, there is no canonical definition to state claims against.
-/

/-! ## A027297.P13367007160888551733

`A002260(A171201(n))*A062803(n+1)`
-/

namespace A027297.P13367007160888551733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A171201 n).toNat * A062803 (n + 1)

end

end A027297.P13367007160888551733

/-!
# A027298: a(n) = Sum_{k=0..m} (k+1) * A026022(n, k), where m=n for n=0,1 and m = floor((n+3)/2) for n >= 2.

The programs for A027298, there is no canonical definition to state claims against.
-/

/-! ## A027298.P13263201227836029741

`∑[∑[A151896(A083706(n)+2)]/4]`
-/

namespace A027298.P13263201227836029741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151896 (A083706 n + 2).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027298.P13263201227836029741

/-! ## A027298.P1607141233372554880

`A001792(n)-A355917(A000670(n))`
-/

namespace A027298.P1607141233372554880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A355917 (A000670 n).toNat

end

end A027298.P1607141233372554880

/-! ## A027298.P4970264033341648450

`A400000(A399999(n+1))+A036884(n+1)`
-/

namespace A027298.P4970264033341648450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A399999 (n + 1)).toNat + A036884 (n + 1)

end

end A027298.P4970264033341648450

/-!
# A027299: a(n) = Sum_{k=0..m} (k+1) * A026022(n, m-k), where m=n for n=0,1 and m = floor((n+3)/2) for n >= 2.

The programs for A027299, there is no canonical definition to state claims against.
-/

/-! ## A027299.P14073713352985560502

`A002024(A282960(n)*A289458(n))`
-/

namespace A027299.P14073713352985560502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A282960 n * A289458 n).toNat

end

end A027299.P14073713352985560502

/-! ## A027299.P18392772761652209210

`A331160(3*(n+1))+A123578(A267689(n))`
-/

namespace A027299.P18392772761652209210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (3 * (n + 1)) + A123578 (A267689 n).toNat

end

end A027299.P18392772761652209210

/-! ## A027299.P5372620441715613605

`eq[A056608(2*(n+2)), A324466(A056000(n))]`
-/

namespace A027299.P5372620441715613605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324466 (A056000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027299.P5372620441715613605

