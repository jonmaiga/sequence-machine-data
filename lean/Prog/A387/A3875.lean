import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A387501: Even numbers k such that the difference between k and the largest prime less than k is not prime.

The programs for A387501, there is no canonical definition to state claims against.
-/

/-! ## A387501.P3284470939296889477

`A175524(n+2)+A001511(A038469(n+3))`
-/

namespace A387501.P3284470939296889477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175524 (n + 2) + A001511 (A038469 (n + 3)).toNat

end

end A387501.P3284470939296889477

/-! ## A387501.P6469671972395567039

`A052424(n+3)+A000035(A286865(n))`
-/

namespace A387501.P6469671972395567039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 3) + A000035 (A286865 n).toNat

end

end A387501.P6469671972395567039

/-! ## A387501.P8551474159102359629

`A292288(p?[2*n+1])`
-/

namespace A387501.P8551474159102359629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292288 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A387501.P8551474159102359629

/-! ## A387501.P9311975978627374267

`A356541(p?[2*n+1])`
-/

namespace A387501.P9311975978627374267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356541 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A387501.P9311975978627374267

/-! ## A387501.P5725855901541404250

`A360006(2*(n+2))+1`
-/

namespace A387501.P5725855901541404250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360006 (2 * (n + 2)) + 1

end

end A387501.P5725855901541404250

/-!
# A387503: Total number of distinct sums of initial subsequences of the divisors > 1 of positive integers up to n.

The programs for A387503, there is no canonical definition to state claims against.
-/

/-! ## A387503.P10913700552330596297

`∑[A387502(n+1)]`
-/

namespace A387503.P10913700552330596297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387503.P10913700552330596297

/-!
# A387508: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(n-3*k,k)^2.

The programs for A387508, there is no canonical definition to state claims against.
-/

/-! ## A387508.P7096550643275485214

`A129801(A151375(n))`
-/

namespace A387508.P7096550643275485214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129801 (A151375 n).toNat

end

end A387508.P7096550643275485214

/-! ## A387508.P11238311290778554757

`A077858(n)-A001222(A000079(2*n))`
-/

namespace A387508.P11238311290778554757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077858 n - A001222 (A000079 (2 * n)).toNat

end

end A387508.P11238311290778554757

/-!
# A387509: a(n) = Sum_{k=0..floor(n/3)} 2^(n-k) * binomial(n-2*k,k)^2.

The programs for A387509, there is no canonical definition to state claims against.
-/

/-! ## A387509.P14482306352251941395

`A131883(A001077(n))`
-/

namespace A387509.P14482306352251941395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A001077 n).toNat

end

end A387509.P14482306352251941395

/-! ## A387509.P2738444766685050662

`A328596(∑[A369442(n)])`
-/

namespace A387509.P2738444766685050662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A387509.P2738444766685050662

/-!
# A387510: a(n) = Sum_{k=0..floor(n/3)} 2^(n-2*k) * binomial(n-2*k,k)^2.

The programs for A387510, there is no canonical definition to state claims against.
-/

/-! ## A387510.P4755325753342970698

`and(A007051(n), A072676(A001287(n)))`
-/

namespace A387510.P4755325753342970698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007051 n) (A072676 (A001287 (n + 10)).toNat)

end

end A387510.P4755325753342970698

/-! ## A387510.P10919308392202662196

`A319911(2*n+1)+A092782(A391647(n))`
-/

namespace A387510.P10919308392202662196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319911 (2 * n + 1) + A092782 (A391647 n).toNat

end

end A387510.P10919308392202662196

/-!
# A387511: a(n) = Sum_{k=0..floor(n/3)} 3^k * 2^(n-2*k) * binomial(n-2*k,k)^2.

The programs for A387511, there is no canonical definition to state claims against.
-/

/-! ## A387511.P13296634061158091450

`A362311(A083706(n))`
-/

namespace A387511.P13296634061158091450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362311 (A083706 n).toNat

end

end A387511.P13296634061158091450

/-! ## A387511.P12245287867763774417

`A328092(A317715(n)+A282615(n+1))`
-/

namespace A387511.P12245287867763774417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328092 (A317715 n + A282615 (n + 1)).toNat

end

end A387511.P12245287867763774417

/-!
# A387512: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-2*k) * binomial(n-2*k,k)^2.

The programs for A387512, there is no canonical definition to state claims against.
-/

/-! ## A387512.P2944210316330791081

`A306584(A083858(n+1))`
-/

namespace A387512.P2944210316330791081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306584 (A083858 (n + 1)).toNat

end

end A387512.P2944210316330791081

/-! ## A387512.P16244834378115563383

`∑[∑[A005250(A152090(n+1))]]`
-/

namespace A387512.P16244834378115563383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A152090 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387512.P16244834378115563383

/-!
# A387513: a(n) = Sum_{k=0..floor(n/3)} 3^(n-2*k) * binomial(n-2*k,k)^2.

The programs for A387513, there is no canonical definition to state claims against.
-/

/-! ## A387513.P1568542726790028609

`A129301(n+1)+A008615(A002457(n))`
-/

namespace A387513.P1568542726790028609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129301 (n + 1) + A008615 (A002457 n).toNat

end

end A387513.P1568542726790028609

/-!
# A387514: Number of ways to tile a fixed circular strip of length n with squares and dominos of two different colors where there must be the same number of each color of domino.

The programs for A387514, there is no canonical definition to state claims against.
-/

/-! ## A387514.P1921793533603092502

`A098482(n+1)+Δ[A098482(n)]`
-/

namespace A387514.P1921793533603092502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 (n + 1) + (f1 (n + 1) - f1 n)

end

end A387514.P1921793533603092502

/-! ## A387514.P11702123863709447928

`A393277(n+1)+A098482(n+1)`
-/

namespace A387514.P11702123863709447928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393277 (n + 1) + A098482 (n + 1)

end

end A387514.P11702123863709447928

/-!
# A387515: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(k,n-2*k)^2.

The programs for A387515, there is no canonical definition to state claims against.
-/

/-! ## A387515.P2473394021498939913

`A321865(A321865(3*n+5)+A196265(n+1))`
-/

namespace A387515.P2473394021498939913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321865 (A321865 (3 * n + 5) + A196265 (n + 1)).toNat

end

end A387515.P2473394021498939913

/-!
# A387517: For n >= 0, a(n) is the least s >= 0 such that (s + 1)*(s + n) is a triangular number (A000217).

The programs for A387517, there is no canonical definition to state claims against.
-/

/-! ## A387517.P4156077185218075069

`A014082(lcm(A152146(n), A283650(n)))`
-/

namespace A387517.P4156077185218075069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (Int.lcm (A152146 n) (A283650 n))

end

end A387517.P4156077185218075069

/-! ## A387517.P15309500470424839453

`A103693(2*(n+2))%A083210(A241171(n+1))`
-/

namespace A387517.P15309500470424839453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103693 (2 * (n + 2))) (A083210 (A241171 (n + 1)).toNat)

end

end A387517.P15309500470424839453

/-!
# A387520: Record low points in A386487, negated.

The programs for A387520, there is no canonical definition to state claims against.
-/

/-! ## A387520.P12850966974384644921

`record[-A386487(n+1)]`
-/

namespace A387520.P12850966974384644921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A386487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387520.P12850966974384644921

/-! ## A387520.P17559641856895949153

`record[n+1-A386482(n+1)]`
-/

namespace A387520.P17559641856895949153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A386482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387520.P17559641856895949153

/-! ## A387520.P7105078797602882308

`-A386487(A387521(n+1))`
-/

namespace A387520.P7105078797602882308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A386487 (A387521 (n + 1)).toNat

end

end A387520.P7105078797602882308

/-! ## A387520.P12727694454423991007

`record[A000027(n+1)-(A386487(n+1)+1+n)]`
-/

namespace A387520.P12727694454423991007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (A386487 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387520.P12727694454423991007

/-! ## A387520.P10106276122340680615

`record[A007949(3*n+1)-A386487(n+1)]`
-/

namespace A387520.P10106276122340680615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (3 * n + 1) - A386487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387520.P10106276122340680615

/-!
# A387522: Index of first term in A386482 that is divisible by the n-th prime.

The programs for A387522, there is no canonical definition to state claims against.
-/

/-! ## A387522.P6533508597289442985

`A387072(A077017(n+2))`
-/

namespace A387522.P6533508597289442985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A077017 (n + 2)).toNat

end

end A387522.P6533508597289442985

/-! ## A387522.P18443429895342890585

`A387072(lcm(2, A000040(n+1)))`
-/

namespace A387522.P18443429895342890585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (Int.lcm 2 (A000040 (n + 1)))

end

end A387522.P18443429895342890585

/-!
# A387523: Primes in the order in which they first divide a term of A386482.

The programs for A387523, there is no canonical definition to state claims against.
-/

/-! ## A387523.P2840166395332934009

`p?[A387544(n+1)]`
-/

namespace A387523.P2840166395332934009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A387523.P2840166395332934009

/-! ## A387523.P15232344747273567410

`A000040(A387640(n+1))`
-/

namespace A387523.P15232344747273567410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A387640 (n + 1)).toNat

end

end A387523.P15232344747273567410

/-! ## A387523.P9469887521434664699

`filter[A387544(n+1), A010051(#)]`
-/

namespace A387523.P9469887521434664699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A387523.P9469887521434664699

/-! ## A387523.P1537637203103935118

`filter[A387544(n+2), A080339(#)]`
-/

namespace A387523.P1537637203103935118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387544 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A387523.P1537637203103935118

/-! ## A387523.P5468989174891341872

`p?[A356851(n+1)]`
-/

namespace A387523.P5468989174891341872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A387523.P5468989174891341872

/-!
# A387524: Primes p with property that in A386482 they are immediately preceded by 2*p and immediately followed by 3*p.

The programs for A387524, there is no canonical definition to state claims against.
-/

/-! ## A387524.P7560351268696807650

`A386482(A387634(n+1))`
-/

namespace A387524.P7560351268696807650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (A387634 (n + 1)).toNat

end

end A387524.P7560351268696807650

/-! ## A387524.P16884196212303386303

`A387087(A387634(n+1)-1)`
-/

namespace A387524.P16884196212303386303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387087 (A387634 (n + 1) - 1).toNat

end

end A387524.P16884196212303386303

/-! ## A387524.P17597583994143548816

`A387079(A387634(2*n+1-n))`
-/

namespace A387524.P17597583994143548816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (A387634 (2 * n + 1 - n)).toNat

end

end A387524.P17597583994143548816

/-!
# A387525: a(n) = (n^4-3*n^2+4*n+2)/2.

The programs for A387525, the canonical program `A387525.P18235159657193941252` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387525 has offset 0).

The definition of A387525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387525.P18235159657193941252

`n*(n^3-3*n+4)/2+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387525

/-- `n*(n^3-3*n+4)/2+1` -/
def P18235159657193941252.Spec : Prop :=
  ∀ n, P18235159657193941252.a n = (A387525 n : ℚ)

end A387525

/-! ## A387525.P8155080950109887900

`(n^4-3*n²+4*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387525.P8155080950109887900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (3 * n ^ 2 : ℤ) + (4 * n : ℤ) + 2 : ℚ) / 2

end

end A387525.P8155080950109887900

namespace A387525

/-- `(n^4-3*n²+4*n+2)/2` -/
def P8155080950109887900.Spec : Prop :=
  ∀ n, P8155080950109887900.a n = (A387525 n : ℚ)

end A387525

/-! ## A387525.P8835192261455258764

`A386478(∑[4*n])`
-/

namespace A387525.P8835192261455258764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387525.P8835192261455258764

namespace A387525

/-- `A386478(∑[4*n])` -/
def P8835192261455258764.Spec : Prop :=
  ∀ n, P8835192261455258764.a n = A387525 n

end A387525

/-!
# A387528: Numbers k such that A387527(k) = 1.

The programs for A387528, there is no canonical definition to state claims against.
-/

/-! ## A387528.P13920053127686948711

`eq[1, A387527(n+1)]+1`
-/

namespace A387528.P13920053127686948711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387528.P13920053127686948711

/-!
# A387529: Numbers k such that A387527(k) = 2.

The programs for A387529, there is no canonical definition to state claims against.
-/

/-! ## A387529.P9443228131217618719

`eq[2, A387527(n+1)]+1`
-/

namespace A387529.P9443228131217618719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387529.P9443228131217618719

/-! ## A387529.P7255270629160985126

`eq[2, A387527(A028310(n))]`
-/

namespace A387529.P7255270629160985126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387527 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A387529.P7255270629160985126

/-!
# A387530: Numbers k such that A387527(k) >= 2.

The programs for A387530, there is no canonical definition to state claims against.
-/

/-! ## A387530.P10771008680504098874

`A140104(n+1)-1`
-/

namespace A387530.P10771008680504098874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140104 (n + 1) - 1

end

end A387530.P10771008680504098874

/-! ## A387530.P8340317547584041602

`A257098(A082011(n+1))+A140104(n+1)`
-/

namespace A387530.P8340317547584041602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A082011 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P8340317547584041602

/-! ## A387530.P15524655438645655501

`A325970(A055072(n+1))+A140104(n+1)`
-/

namespace A387530.P15524655438645655501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A055072 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P15524655438645655501

/-! ## A387530.P4842690622561865929

`A257098(A040028(n+1))+A140104(n+1)`
-/

namespace A387530.P4842690622561865929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A040028 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P4842690622561865929

/-! ## A387530.P9900265145834218143

`A257098(A055072(n+5))+A140104(n+1)`
-/

namespace A387530.P9900265145834218143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A055072 (n + 5)).toNat + A140104 (n + 1)

end

end A387530.P9900265145834218143

/-! ## A387530.P10676017797049810233

`A257098(A078494(n+1))+A140104(n+1)`
-/

namespace A387530.P10676017797049810233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A078494 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P10676017797049810233

/-! ## A387530.P16686320637501217576

`A257098(A001097(n+1))+A140104(n+1)`
-/

namespace A387530.P16686320637501217576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A001097 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P16686320637501217576

/-! ## A387530.P7008944716779327911

`A355936(A379351(n))+A140104(n+1)`
-/

namespace A387530.P7008944716779327911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355936 (A379351 n).toNat + A140104 (n + 1)

end

end A387530.P7008944716779327911

/-! ## A387530.P17853357667313484798

`A364731(A364729(n+1))+A140104(n+1)`
-/

namespace A387530.P17853357667313484798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364731 (A364729 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P17853357667313484798

/-! ## A387530.P10098305880103027525

`A257098(A065994(n+1))+A140104(n+1)`
-/

namespace A387530.P10098305880103027525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A065994 (n + 1)).toNat + A140104 (n + 1)

end

end A387530.P10098305880103027525

/-! ## A387530.P9203066423205376845

`A023443(A140104(n+1))`
-/

namespace A387530.P9203066423205376845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A140104 (n + 1)).toNat

end

end A387530.P9203066423205376845

/-!
# A387532: Numbers k in A005117 such that k+1 is in A001694.

The programs for A387532, there is no canonical definition to state claims against.
-/

/-! ## A387532.P13633079243765100871

`filter[A359749(n+2), A008966(#)]`
-/

namespace A387532.P13633079243765100871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A387532.P13633079243765100871

/-! ## A387532.P16647240962509660942

`record[A007947(A001694(n+2)-1)]`
-/

namespace A387532.P16647240962509660942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001694 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387532.P16647240962509660942

/-! ## A387532.P9722845845192116712

`eq[A055231(n+1), A378619(n+1)]`
-/

namespace A387532.P9722845845192116712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P9722845845192116712

/-! ## A387532.P7729105309159006896

`∩[A144338(n+1), A359749(n+1)]`
-/

namespace A387532.P7729105309159006896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387532.P7729105309159006896

/-! ## A387532.P5925368868459944712

`∩[A359749(n+1), A366882(n+1)]`
-/

namespace A387532.P5925368868459944712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387532.P5925368868459944712

/-! ## A387532.P10923540982469004367

`eq[A063956(n+1), A087049(n)]`
-/

namespace A387532.P10923540982469004367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P10923540982469004367

/-! ## A387532.P7596374112664547461

`eq[A080367(n+1), A087049(n)]`
-/

namespace A387532.P7596374112664547461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P7596374112664547461

/-! ## A387532.P4554341620270306436

`eq[A080368(n+1), A087049(n)]`
-/

namespace A387532.P4554341620270306436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P4554341620270306436

/-! ## A387532.P2680841178801029847

`eq[A112526(n+1), A255326(n)]`
-/

namespace A387532.P2680841178801029847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P2680841178801029847

/-! ## A387532.P17593089731288511125

`eq[A087049(n), A344137(n+1)]`
-/

namespace A387532.P17593089731288511125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P17593089731288511125

/-! ## A387532.P2278012018013864344

`eq[A055231(n+1), A285718(n+1)]`
-/

namespace A387532.P2278012018013864344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P2278012018013864344

/-! ## A387532.P12629470984759167594

`eq[A091306(n+1), A285718(n+1)]`
-/

namespace A387532.P12629470984759167594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P12629470984759167594

/-! ## A387532.P16100976987400185257

`eq[A112526(n+1), A285718(n+1)]`
-/

namespace A387532.P16100976987400185257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P16100976987400185257

/-! ## A387532.P15294303100996508218

`eq[A091306(n+1), A378619(n+1)]`
-/

namespace A387532.P15294303100996508218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387532.P15294303100996508218

/-!
# A387533: a(n) = prime(n)^d(n), where d(n) = A000796(n) is the n-th digit of Pi.

The programs for A387533, there is no canonical definition to state claims against.
-/

/-! ## A387533.P12853711793023335234

`A000040(n+1)^A000796(n)`
-/

namespace A387533.P12853711793023335234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000796 (n + 1) : ℤ)

end

end A387533.P12853711793023335234

/-! ## A387533.P14628215218398530153

`A000040(n+1)^sqrt(A072448(n+1))`
-/

namespace A387533.P14628215218398530153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) ^ (Real.sqrt (A072448 (n + 1) : ℝ))

end

end A387533.P14628215218398530153

/-! ## A387533.P16883905393176010393

`A000040(n+1)^A010879(A065253(n+1))`
-/

namespace A387533.P16883905393176010393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A010879 (A065253 (n + 1)).toNat : ℤ)

end

end A387533.P16883905393176010393

/-! ## A387533.P17539357801694554705

`A000040(n+1)^A001355(Δ[n²])`
-/

namespace A387533.P17539357801694554705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A387533.P17539357801694554705

/-!
# A387534: a(n) = Product_{i=1..n} A387533(i).

The programs for A387534, there is no canonical definition to state claims against.
-/

/-! ## A387534.P785470721721482354

`∏[A387533(n+1)]`
-/

namespace A387534.P785470721721482354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387534.P785470721721482354

/-!
# A387535: a(n) = maximum k such that B(n) < B(n+1) < ... < B(n+k-1), where B = bigomega (A001222).

The programs for A387535, there is no canonical definition to state claims against.
-/

/-! ## A387535.P4369962699487435722

`A054977(C(A238745(n+1), A238745(n+2)))`
-/

namespace A387535.P4369962699487435722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (Nat.choose (A238745 (n + 1)).toNat (A238745 (n + 2)).toNat)

end

end A387535.P4369962699487435722

/-! ## A387535.P9248183462175920866

`ceil(Δ[A001222(n+1)/A106299(n+1)])+1`
-/

namespace A387535.P9248183462175920866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) / (A106299 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉ + 1

end

end A387535.P9248183462175920866

/-! ## A387535.P1365623674334104067

`gcd(A156557(A295294(n+1)), A247764(n+1))`
-/

namespace A387535.P1365623674334104067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156557 (A295294 (n + 1)).toNat) (A247764 (n + 1))

end

end A387535.P1365623674334104067

/-! ## A387535.P2097272246303939032

`gcd(A049705(A390989(3*(n+1))), A262545(n+1))`
-/

namespace A387535.P2097272246303939032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049705 (A390989 (3 * (n + 1))).toNat) (A262545 (n + 1))

end

end A387535.P2097272246303939032

/-! ## A387535.P18188420473109566723

`A126773(2*A298882(n+1))`
-/

namespace A387535.P18188420473109566723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (2 * A298882 (n + 1)).toNat

end

end A387535.P18188420473109566723

/-!
# A387537: a(n) = maximum k such that B(n) < B(n+1) < ... < B(n+k-1), where B = omega (A001221).

The programs for A387537, there is no canonical definition to state claims against.
-/

/-! ## A387537.P4248786361834174544

`A101656(A038036(n+1)%A034444(n+2))`
-/

namespace A387537.P4248786361834174544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101656 (Int.tmod (A038036 (n + 1)) (A034444 (n + 2))).toNat

end

end A387537.P4248786361834174544

/-! ## A387537.P5517020704716305145

`round(ratio[A172248(A034448(n+1))])`
-/

namespace A387537.P5517020704716305145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172248 (A034448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A387537.P5517020704716305145

/-! ## A387537.P5122756921196752469

`A040001(A325159(gcd(n, floor(n/2)))+1)`
-/

namespace A387537.P5122756921196752469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A325159 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋) + 1).toNat

end

end A387537.P5122756921196752469

/-! ## A387537.P7193241940524848500

`A337675(C(A378993(n+1), A378993(n+2)))`
-/

namespace A387537.P7193241940524848500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337675 (Nat.choose (A378993 (n + 1)).toNat (A378993 (n + 2)).toNat)

end

end A387537.P7193241940524848500

/-! ## A387537.P3409017343761915880

`A085006(A298812(n+1))`
-/

namespace A387537.P3409017343761915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (A298812 (n + 1)).toNat

end

end A387537.P3409017343761915880

/-!
# A387539: Sum of the odd parts in the partitions of n into 2 parts.

The programs for A387539, the canonical program `A387539.P2141426731724547272` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387539 has offset 0).

The definition of A387539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387539.P2141426731724547272

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=4, a(5)=4, a(6)=12, a(7)=9, a(8)=16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387539

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P2141426731724547272.Spec : Prop :=
  ∀ n, P2141426731724547272.a n = A387539 n

theorem P2141426731724547272.correct : P2141426731724547272.Spec := by
  intro n
  simp only [A387539]

end A387539

/-! ## A387539.P13197184510516819563

`A002620(xor(n, ceil(n/4)-floor(n/4)))`
-/

namespace A387539.P13197184510516819563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.xor (n : ℤ) (⌈(n : ℚ) / 4⌉ - ⌊(n : ℚ) / 4⌋)).toNat

end

end A387539.P13197184510516819563

namespace A387539

/-- `A002620(xor(n, ceil(n/4)-floor(n/4)))` -/
def P13197184510516819563.Spec : Prop :=
  ∀ n, P13197184510516819563.a n = A387539 n

end A387539

/-! ## A387539.P10180082469823532189

`A135276(n)-A283971(n)`
-/

namespace A387539.P10180082469823532189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n - A283971 n

end

end A387539.P10180082469823532189

namespace A387539

/-- `A135276(n)-A283971(n)` -/
def P10180082469823532189.Spec : Prop :=
  ∀ n, P10180082469823532189.a n = A387539 n

end A387539

/-! ## A387539.P12763972040904137602

`A093353(n)-(A387541(n)+A014682(n))`
-/

namespace A387539.P12763972040904137602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n - (A387541 n + A014682 n)

end

end A387539.P12763972040904137602

namespace A387539

/-- `A093353(n)-(A387541(n)+A014682(n))` -/
def P12763972040904137602.Spec : Prop :=
  ∀ n, P12763972040904137602.a n = A387539 n

end A387539

/-! ## A387539.P7011325547474380053

`A002620(A059169(3*n+1)+A059169(n+1))`
-/

namespace A387539.P7011325547474380053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A059169 (3 * n + 1) + A059169 (n + 1)).toNat

end

end A387539.P7011325547474380053

namespace A387539

/-- `A002620(A059169(3*n+1)+A059169(n+1))` -/
def P7011325547474380053.Spec : Prop :=
  ∀ n, P7011325547474380053.a n = A387539 n

end A387539

/-! ## A387539.P15620125849711967165

`A110654(A387541(2*n))-A387541(n)`
-/

namespace A387539.P15620125849711967165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A387541 (2 * n)).toNat - A387541 n

end

end A387539.P15620125849711967165

namespace A387539

/-- `A110654(A387541(2*n))-A387541(n)` -/
def P15620125849711967165.Spec : Prop :=
  ∀ n, P15620125849711967165.a n = A387539 n

end A387539

/-!
# A387540: Number of simply laced Dynkin diagrams with n nodes.

The programs for A387540, the canonical program `A387540.P6510496065785966546` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387540 has offset 0).

The definition of A387540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387540.P6510496065785966546

`a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=3, a(7)=3, a(8)=3, a(9)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387540

/-- `a(n-1)` -/
def P6510496065785966546.Spec : Prop :=
  ∀ n, (P6510496065785966546.a n : ℤ) = A387540 n

theorem P6510496065785966546.correct : P6510496065785966546.Spec := by
  intro n
  simp only [A387540]

end A387540

/-!
# A387541: Sum of the even parts in the partitions of n into 2 parts.

The programs for A387541, the canonical program `A387541.P2549691436260464371` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387541 has offset 0).

The definition of A387541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387541.P2549691436260464371

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=4, a(5)=6, a(6)=6, a(7)=12, a(8)=16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387541

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P2549691436260464371.Spec : Prop :=
  ∀ n, P2549691436260464371.a n = A387541 n

theorem P2549691436260464371.correct : P2549691436260464371.Spec := by
  intro n
  simp only [A387541]

end A387541

/-! ## A387541.P9802537202483298420

`A272104(n)+A038714(n)`
-/

namespace A387541.P9802537202483298420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272104 n + A038714 n

end

end A387541.P9802537202483298420

namespace A387541

/-- `A272104(n)+A038714(n)` -/
def P9802537202483298420.Spec : Prop :=
  ∀ n, P9802537202483298420.a n = A387541 n

end A387541

/-! ## A387541.P11344494938433818381

`A004524(n)*A065033(n)`
-/

namespace A387541.P11344494938433818381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n * A065033 n

end

end A387541.P11344494938433818381

namespace A387541

/-- `A004524(n)*A065033(n)` -/
def P11344494938433818381.Spec : Prop :=
  ∀ n, P11344494938433818381.a n = A387541 n

end A387541

/-! ## A387541.P13536887622166209478

`A004524(n)*A110654(n)`
-/

namespace A387541.P13536887622166209478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n * A110654 n

end

end A387541.P13536887622166209478

namespace A387541

/-- `A004524(n)*A110654(n)` -/
def P13536887622166209478.Spec : Prop :=
  ∀ n, P13536887622166209478.a n = A387541 n

end A387541

/-! ## A387541.P105361829827492965

`A065423(n+1)*A124072(n)`
-/

namespace A387541.P105361829827492965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 1) * A124072 n

end

end A387541.P105361829827492965

namespace A387541

/-- `A065423(n+1)*A124072(n)` -/
def P105361829827492965.Spec : Prop :=
  ∀ n, P105361829827492965.a n = A387541 n

end A387541

/-! ## A387541.P581696188705495089

`A004526(n)*A291271(n+2)`
-/

namespace A387541.P581696188705495089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A291271 (n + 2)

end

end A387541.P581696188705495089

namespace A387541

/-- `A004526(n)*A291271(n+2)` -/
def P581696188705495089.Spec : Prop :=
  ∀ n, P581696188705495089.a n = A387541 n

end A387541

/-! ## A387541.P1971603116469216343

`A123108(n)*A291271(n+2)`
-/

namespace A387541.P1971603116469216343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n * A291271 (n + 2)

end

end A387541.P1971603116469216343

namespace A387541

/-- `A123108(n)*A291271(n+2)` -/
def P1971603116469216343.Spec : Prop :=
  ∀ n, P1971603116469216343.a n = A387541 n

end A387541

/-! ## A387541.P9861564877420579375

`A093353(n)-(A387539(n)+A014682(n))`
-/

namespace A387541.P9861564877420579375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n - (A387539 n + A014682 n)

end

end A387541.P9861564877420579375

namespace A387541

/-- `A093353(n)-(A387539(n)+A014682(n))` -/
def P9861564877420579375.Spec : Prop :=
  ∀ n, P9861564877420579375.a n = A387541 n

end A387541

/-! ## A387541.P9207253306474700179

`(A002620(n+1)-A002620(n))*A004524(n)`
-/

namespace A387541.P9207253306474700179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 (n + 1) - A002620 n) * A004524 n

end

end A387541.P9207253306474700179

namespace A387541

/-- `(A002620(n+1)-A002620(n))*A004524(n)` -/
def P9207253306474700179.Spec : Prop :=
  ∀ n, P9207253306474700179.a n = A387541 n

end A387541

/-! ## A387541.P14592217889913667122

`A004524(n)*A008619(n+1)-A004524(n)`
-/

namespace A387541.P14592217889913667122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n * A008619 (n + 1) - A004524 n

end

end A387541.P14592217889913667122

namespace A387541

/-- `A004524(n)*A008619(n+1)-A004524(n)` -/
def P14592217889913667122.Spec : Prop :=
  ∀ n, P14592217889913667122.a n = A387541 n

end A387541

/-! ## A387541.P16003088720950835464

`A065173(n+1)*A065261(n+1)-A065173(n+1)`
-/

namespace A387541.P16003088720950835464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065173 (n + 1) * A065261 (n + 1) - A065173 (n + 1)

end

end A387541.P16003088720950835464

namespace A387541

/-- `A065173(n+1)*A065261(n+1)-A065173(n+1)` -/
def P16003088720950835464.Spec : Prop :=
  ∀ n, P16003088720950835464.a n = A387541 n

end A387541

/-! ## A387541.P12126073507351038852

`A004524(n)*A004526(n+1)`
-/

namespace A387541.P12126073507351038852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n * A004526 (n + 1)

end

end A387541.P12126073507351038852

namespace A387541

/-- `A004524(n)*A004526(n+1)` -/
def P12126073507351038852.Spec : Prop :=
  ∀ n, P12126073507351038852.a n = A387541 n

end A387541

/-! ## A387541.P7891113744738078472

`A002620(n-A011765(n+2))`
-/

namespace A387541.P7891113744738078472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((n : ℤ) - A011765 (n + 2)).toNat

end

end A387541.P7891113744738078472

namespace A387541

/-- `A002620(n-A011765(n+2))` -/
def P7891113744738078472.Spec : Prop :=
  ∀ n, P7891113744738078472.a n = A387541 n

end A387541

/-! ## A387541.P2342327513761932270

`A182568(n+2-A011765(n+2))`
-/

namespace A387541.P2342327513761932270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 ((n + 2 : ℤ) - A011765 (n + 2)).toNat

end

end A387541.P2342327513761932270

namespace A387541

/-- `A182568(n+2-A011765(n+2))` -/
def P2342327513761932270.Spec : Prop :=
  ∀ n, P2342327513761932270.a n = A387541 n

end A387541

/-! ## A387541.P9570467803848771740

`A004524(A109613(n+1))*A004524(n)`
-/

namespace A387541.P9570467803848771740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A109613 (n + 1)).toNat * A004524 n

end

end A387541.P9570467803848771740

namespace A387541

/-- `A004524(A109613(n+1))*A004524(n)` -/
def P9570467803848771740.Spec : Prop :=
  ∀ n, P9570467803848771740.a n = A387541 n

end A387541

/-! ## A387541.P15497311740552022497

`(A002265(n+1)+A002265(n))*A110654(n)`
-/

namespace A387541.P15497311740552022497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 (n + 1) + A002265 n) * A110654 n

end

end A387541.P15497311740552022497

namespace A387541

/-- `(A002265(n+1)+A002265(n))*A110654(n)` -/
def P15497311740552022497.Spec : Prop :=
  ∀ n, P15497311740552022497.a n = A387541 n

end A387541

/-! ## A387541.P10647904213366197412

`(A140201(n)-A004524(n+1))*A004524(n)`
-/

namespace A387541.P10647904213366197412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140201 n - A004524 (n + 1)) * A004524 n

end

end A387541.P10647904213366197412

namespace A387541

/-- `(A140201(n)-A004524(n+1))*A004524(n)` -/
def P10647904213366197412.Spec : Prop :=
  ∀ n, P10647904213366197412.a n = A387541 n

end A387541

/-! ## A387541.P11807530148684340262

`(A002265(n+1)+A002265(n))*A004526(n+1)`
-/

namespace A387541.P11807530148684340262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 (n + 1) + A002265 n) * A004526 (n + 1)

end

end A387541.P11807530148684340262

namespace A387541

/-- `(A002265(n+1)+A002265(n))*A004526(n+1)` -/
def P11807530148684340262.Spec : Prop :=
  ∀ n, P11807530148684340262.a n = A387541 n

end A387541

/-! ## A387541.P13471414923234742064

`(A004526(n+1)-A166486(n))*A004526(n+1)`
-/

namespace A387541.P13471414923234742064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 (n + 1) - A166486 n) * A004526 (n + 1)

end

end A387541.P13471414923234742064

namespace A387541

/-- `(A004526(n+1)-A166486(n))*A004526(n+1)` -/
def P13471414923234742064.Spec : Prop :=
  ∀ n, P13471414923234742064.a n = A387541 n

end A387541

/-! ## A387541.P14559270044240090329

`A008130(A047237(n+1))`
-/

namespace A387541.P14559270044240090329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A047237 (n + 1)).toNat

end

end A387541.P14559270044240090329

namespace A387541

/-- `A008130(A047237(n+1))` -/
def P14559270044240090329.Spec : Prop :=
  ∀ n, P14559270044240090329.a n = A387541 n

end A387541

/-!
# A387544: Even terms of A386482, halved, in order of occurrence.

The programs for A387544, there is no canonical definition to state claims against.
-/

/-! ## A387544.P13053828927514726940

`A386482(A387558(n+1))/2`
-/

namespace A387544.P13053828927514726940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386482 (A387558 (n + 1)).toNat : ℚ) / 2

end

end A387544.P13053828927514726940

/-!
# A387547: Number of partitions of a 2n-set into even blocks of size > 2.

The programs for A387547, there is no canonical definition to state claims against.
-/

/-! ## A387547.P3926409947228679423

`A286510(A000248(n))-A301999(n+1)`
-/

namespace A387547.P3926409947228679423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286510 (A000248 n).toNat - A301999 (n + 1)

end

end A387547.P3926409947228679423

/-! ## A387547.P2081601744469756142

`A173970(n+4)%A327591(A000166(n))`
-/

namespace A387547.P2081601744469756142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173970 (n + 4)) (A327591 (A000166 n).toNat)

end

end A387547.P2081601744469756142

/-!
# A387548: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 / (1 + x^2 / (1 - x)^2) ).

The programs for A387548, there is no canonical definition to state claims against.
-/

/-! ## A387548.P17821084806341520799

`A151374(n)-A241464(A329738(n))`
-/

namespace A387548.P17821084806341520799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n - A241464 (A329738 n).toNat

end

end A387548.P17821084806341520799

/-! ## A387548.P6224398682149044799

`A057820(2*(n+1))+A004526(A371785(n))`
-/

namespace A387548.P6224398682149044799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (2 * (n + 1)) + A004526 (A371785 n).toNat

end

end A387548.P6224398682149044799

/-!
# A387549: Numbers k such that k^2 + 23 is twice a square.

The programs for A387549, the canonical program `A387549.P10063503865492196353` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387549 has offset 1).

The definition of A387549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387549.P10063503865492196353

`6*a(n-2)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=25, a(3)=45`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387549

/-- `6*a(n-2)-a(n-4)` -/
def P10063503865492196353.Spec : Prop :=
  ∀ n, P10063503865492196353.a n = A387549 (n + 1)

theorem P10063503865492196353.correct : P10063503865492196353.Spec := by
  intro n
  simp only [A387549, Nat.add_sub_cancel]

end A387549

/-! ## A387549.P9921339011261243667

`2*A154138(n+1)+1`
-/

namespace A387549.P9921339011261243667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154138 (n + 1) + 1

end

end A387549.P9921339011261243667

namespace A387549

/-- `2*A154138(n+1)+1` -/
def P9921339011261243667.Spec : Prop :=
  ∀ n, P9921339011261243667.a n = A387549 (n + 1)

end A387549

/-! ## A387549.P14543528810512806677

`A144797(n+1)+A077442(n)`
-/

namespace A387549.P14543528810512806677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144797 (n + 1) + A077442 n

end

end A387549.P14543528810512806677

namespace A387549

/-- `A144797(n+1)+A077442(n)` -/
def P14543528810512806677.Spec : Prop :=
  ∀ n, P14543528810512806677.a n = A387549 (n + 1)

end A387549

/-! ## A387549.P12445696562747442730

`A154147(n+1)-A006451(n)`
-/

namespace A387549.P12445696562747442730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) - A006451 n

end

end A387549.P12445696562747442730

namespace A387549

/-- `A154147(n+1)-A006451(n)` -/
def P12445696562747442730.Spec : Prop :=
  ∀ n, P12445696562747442730.a n = A387549 (n + 1)

end A387549

/-! ## A387549.P9959434648493979302

`A154152(n+1)-A154138(n+1)`
-/

namespace A387549.P9959434648493979302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A154138 (n + 1)

end

end A387549.P9959434648493979302

namespace A387549

/-- `A154152(n+1)-A154138(n+1)` -/
def P9959434648493979302.Spec : Prop :=
  ∀ n, P9959434648493979302.a n = A387549 (n + 1)

end A387549

/-! ## A387549.P3245123023595566218

`A154154(n+1)-A154139(n+1)`
-/

namespace A387549.P3245123023595566218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) - A154139 (n + 1)

end

end A387549.P3245123023595566218

namespace A387549

/-- `A154154(n+1)-A154139(n+1)` -/
def P3245123023595566218.Spec : Prop :=
  ∀ n, P3245123023595566218.a n = A387549 (n + 1)

end A387549

/-!
# A387550: a(n) = (1/2) * Sum_{k=0..n} 2^k * binomial(2*k+2,2*n-2*k+1).

The programs for A387550, the canonical program `A387550.P10534718619198405326` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387550 has offset 0).

The definition of A387550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387550.P10534718619198405326

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=72`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387550

/-- `4*a(n-1)+8*a(n-3)-4*a(n-4)` -/
def P10534718619198405326.Spec : Prop :=
  ∀ n, P10534718619198405326.a n = A387550 n

theorem P10534718619198405326.correct : P10534718619198405326.Spec := by
  intro n
  simp only [A387550]

end A387550

/-! ## A387550.P11980656485107070192

`ogf(1/(1-4x-8x^3+4x^4))`
-/

namespace A387550.P11980656485107070192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, -8, 4] n

end

end A387550.P11980656485107070192

namespace A387550

/-- `ogf(1/(1-4x-8x^3+4x^4))` -/
def P11980656485107070192.Spec : Prop :=
  ∀ n, P11980656485107070192.a n = A387550 n

end A387550

/-! ## A387550.P14904831249175117715

`A374512(2*n+3)/4`
-/

namespace A387550.P14904831249175117715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374512 (2 * n + 3) : ℚ) / 4

end

end A387550.P14904831249175117715

namespace A387550

/-- `A374512(2*n+3)/4` -/
def P14904831249175117715.Spec : Prop :=
  ∀ n, P14904831249175117715.a n = (A387550 n : ℚ)

end A387550

/-!
# A387554: a(n) = (1/2) * Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+2,2*n-4*k+1).

The programs for A387554, the canonical program `A387554.P12030374184026086549` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387554 has offset 0).

The definition of A387554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387554.P12030374184026086549

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=3, a(5)=20`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387554

/-- `2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` -/
def P12030374184026086549.Spec : Prop :=
  ∀ n, P12030374184026086549.a n = A387554 n

theorem P12030374184026086549.correct : P12030374184026086549.Spec := by
  intro n
  simp only [A387554]

end A387554

/-!
# A387557: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+2,2*n-6*k+1).

The programs for A387557, the canonical program `A387557.P6941856615461377033` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387557 has offset 0).

The definition of A387557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387557.P6941856615461377033

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=4, a(5)=0, a(6)=3, a(7)=20`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387557

/-- `2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` -/
def P6941856615461377033.Spec : Prop :=
  ∀ n, P6941856615461377033.a n = A387557 n

theorem P6941856615461377033.correct : P6941856615461377033.Spec := by
  intro n
  simp only [A387557]

end A387557

/-!
# A387558: Numbers k such that A386482(k) is even.

The programs for A387558, there is no canonical definition to state claims against.
-/

/-! ## A387558.P6301388758818666209

`A387072(2*A387544(n+1))`
-/

namespace A387558.P6301388758818666209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (2 * A387544 (n + 1)).toNat

end

end A387558.P6301388758818666209

/-! ## A387558.P4864933600442410744

`A387072(A387544(n+1)+A387544(n+1))`
-/

namespace A387558.P4864933600442410744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387544 (n + 1) + A387544 (n + 1)).toNat

end

end A387558.P4864933600442410744

/-! ## A387558.P11391690276353308897

`eq[2, A387079(n+1)]+1`
-/

namespace A387558.P11391690276353308897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387558.P11391690276353308897

/-!
# A387560: a(n) is the smallest positive integer with exactly n uniform divisors.

The programs for A387560, there is no canonical definition to state claims against.
-/

/-! ## A387560.P2069388157972463910

`A293442(A349260(n))`
-/

namespace A387560.P2069388157972463910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A349260 n).toNat

end

end A387560.P2069388157972463910

/-! ## A387560.P13009521077455937538

`A250479(A277324(n))`
-/

namespace A387560.P13009521077455937538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (A277324 n).toNat

end

end A387560.P13009521077455937538

/-! ## A387560.P3545510074067490644

`A193551(A060735(n+1))`
-/

namespace A387560.P3545510074067490644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A060735 (n + 1)).toNat

end

end A387560.P3545510074067490644

/-! ## A387560.P7682370858643119265

`A193551(A384723(n+1))`
-/

namespace A387560.P7682370858643119265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A384723 (n + 1)).toNat

end

end A387560.P7682370858643119265

/-! ## A387560.P9740919949868156594

`A064989(2*A277324(n))`
-/

namespace A387560.P9740919949868156594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A277324 n).toNat

end

end A387560.P9740919949868156594

/-!
# A387566: Number of matchings in the n-Lucas cube graph.

The programs for A387566, there is no canonical definition to state claims against.
-/

/-! ## A387566.P5548336086257614718

`A073678(A042829(n+1))`
-/

namespace A387566.P5548336086257614718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073678 (A042829 (n + 1)).toNat

end

end A387566.P5548336086257614718

/-!
# A387570: Number of matchings in the n-dipyramidal graph.

The programs for A387570, the canonical program `A387570.P11961951256237824758` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387570 has offset 0).

The definition of A387570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387570.P11961951256237824758

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=2, a(1)=3, a(2)=9, a(3)=22, a(4)=51, a(5)=111`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387570

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P11961951256237824758.Spec : Prop :=
  ∀ n, P11961951256237824758.a n = A387570 n

theorem P11961951256237824758.correct : P11961951256237824758.Spec := by
  intro n
  simp only [A387570]

end A387570

/-! ## A387570.P7688336674459339053

`A255329(A356554(n))+A001628(n)`
-/

namespace A387570.P7688336674459339053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255329 (A356554 n).toNat + A001628 n

end

end A387570.P7688336674459339053

namespace A387570

/-- `A255329(A356554(n))+A001628(n)` -/
def P7688336674459339053.Spec : Prop :=
  ∀ n, P7688336674459339053.a n = A387570 n

end A387570

/-! ## A387570.P11147258463861259460

`A088517(A269134(n+1))+A001628(n)`
-/

namespace A387570.P11147258463861259460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A269134 (n + 1)).toNat + A001628 n

end

end A387570.P11147258463861259460

namespace A387570

/-- `A088517(A269134(n+1))+A001628(n)` -/
def P11147258463861259460.Spec : Prop :=
  ∀ n, P11147258463861259460.a n = A387570 n

end A387570

/-!
# A387571: Number of matchings in the n-double cone graph.

The programs for A387571, the canonical program `A387571.P4098746600360052705` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387571 has offset 1).

The definition of A387571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387571.P4098746600360052705

`5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=3, a(1)=21, a(2)=64, a(3)=217, a(4)=671`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387571

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` -/
def P4098746600360052705.Spec : Prop :=
  ∀ n, P4098746600360052705.a n = A387571 (n + 1)

theorem P4098746600360052705.correct : P4098746600360052705.Spec := by
  intro n
  simp only [A387571, Nat.add_sub_cancel]

end A387571

/-! ## A387571.P9591801442319532742

`(A136376(n+2)-A045925(n))*A000032(n+1)`
-/

namespace A387571.P9591801442319532742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136376 (n + 2) - A045925 n) * A000032 (n + 1)

end

end A387571.P9591801442319532742

namespace A387571

/-- `(A136376(n+2)-A045925(n))*A000032(n+1)` -/
def P9591801442319532742.Spec : Prop :=
  ∀ n, P9591801442319532742.a n = A387571 (n + 1)

end A387571

/-!
# A387573: Total number of runs of 1's in all length n binary words in which 1's occur in runs of at least 3.

The programs for A387573, there is no canonical definition to state claims against.
-/

/-! ## A387573.P10901779948783683400

`A023426(n+2)-A373957(A175762(n+1))`
-/

namespace A387573.P10901779948783683400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 (n + 2) - A373957 (A175762 (n + 1)).toNat

end

end A387573.P10901779948783683400

/-! ## A387573.P9261637747470844495

`A023426(n+2)-A353682(A126869(2*n))`
-/

namespace A387573.P9261637747470844495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 (n + 2) - A353682 (A126869 (2 * n)).toNat

end

end A387573.P9261637747470844495

/-! ## A387573.P10633919405486059815

`A023426(n+2)-A373957(A000040(2*(n+2)))`
-/

namespace A387573.P10633919405486059815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 (n + 2) - A373957 (A000040 (2 * (n + 2))).toNat

end

end A387573.P10633919405486059815

/-! ## A387573.P14358788311231512456

`A161359(A054152(n))`
-/

namespace A387573.P14358788311231512456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161359 (A054152 n).toNat

end

end A387573.P14358788311231512456

/-! ## A387573.P3328713111245436650

`A071626(A148733(n))`
-/

namespace A387573.P3328713111245436650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A148733 n).toNat

end

end A387573.P3328713111245436650

/-!
# A387576: Numbers k such that it is possible to choose a sequence of distinct integer partitions, one of each prime index of k (with multiplicity).

The programs for A387576, there is no canonical definition to state claims against.
-/

/-! ## A387576.P8989331234816089590

`lt[1, ∏{e}[2*n, 4-#!]]`
-/

namespace A387576.P8989331234816089590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (4 - (Nat.factorial (Nat.factorization (f3 n) p) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387576.P8989331234816089590

/-! ## A387576.P7875191409498686532

`lt[∏{e}[2*n, #!^#], 2*n+1]`
-/

namespace A387576.P7875191409498686532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A387576.P7875191409498686532

/-! ## A387576.P2746565312270886724

`lt[A068346(n), n]`
-/

namespace A387576.P2746565312270886724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387576.P2746565312270886724

/-! ## A387576.P13399608611433739768

`A048103(n+1)%96`
-/

namespace A387576.P13399608611433739768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048103 (n + 1)) 96

end

end A387576.P13399608611433739768

/-! ## A387576.P7719971993808280202

`comp[(n+1)*A129251(n+1)]`
-/

namespace A387576.P7719971993808280202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A129251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387576.P7719971993808280202

/-! ## A387576.P14973707556643044802

`A130446(A048103(n+1))`
-/

namespace A387576.P14973707556643044802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A048103 (n + 1)).toNat

end

end A387576.P14973707556643044802

/-! ## A387576.P12187946762052569140

`filter[A118760(n), A359550(#)]`
-/

namespace A387576.P12187946762052569140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A387576.P12187946762052569140

/-!
# A387577: Numbers k such that it is not possible to choose a sequence of distinct integer partitions, one of each prime index of k (with multiplicity).

The programs for A387577, there is no canonical definition to state claims against.
-/

/-! ## A387577.P8347549800434973633

`A100716(A296879(n+1))`
-/

namespace A387577.P8347549800434973633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (A296879 (n + 1)).toNat

end

end A387577.P8347549800434973633

/-! ## A387577.P10225708166376255060

`A100716(A296882(n+1))`
-/

namespace A387577.P10225708166376255060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (A296882 (n + 1)).toNat

end

end A387577.P10225708166376255060

/-! ## A387577.P8471660079476721386

`A327964(A328251(n+1))`
-/

namespace A387577.P8471660079476721386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327964 (A328251 (n + 1)).toNat

end

end A387577.P8471660079476721386

/-! ## A387577.P6569762150095775272

`A328251(A361374(n+1))`
-/

namespace A387577.P6569762150095775272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328251 (A361374 (n + 1)).toNat

end

end A387577.P6569762150095775272

/-! ## A387577.P15431706779046809709

`A100716(A304042(n)+n)`
-/

namespace A387577.P15431706779046809709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (A304042 n + (n : ℤ)).toNat

end

end A387577.P15431706779046809709

/-! ## A387577.P12374708942782079298

`filter[A097858(n), A342023(#)]`
-/

namespace A387577.P12374708942782079298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A387577.P12374708942782079298

/-!
# A387578: Number of integer partitions of n such that for some part k the multiplicity of k exceeds k.

The programs for A387578, there is no canonical definition to state claims against.
-/

/-! ## A387578.P18090520600822974357

`A000041(n)-A052335(n)`
-/

namespace A387578.P18090520600822974357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A052335 n

end

end A387578.P18090520600822974357

/-! ## A387578.P13019324843862505895

`A000041(n)-A303940(∑[n+2]-1)`
-/

namespace A387578.P13019324843862505895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A303940 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A387578.P13019324843862505895

/-! ## A387578.P10276808847286711714

`A387329(n)+A387330(n)-A052335(n)`
-/

namespace A387578.P10276808847286711714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387329 n + (A387330 n - A052335 n)

end

end A387578.P10276808847286711714

/-! ## A387578.P12972202086838676883

`A238873(n)+A387118(n)-A052335(n)`
-/

namespace A387578.P12972202086838676883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A052335 n)

end

end A387578.P12972202086838676883

/-! ## A387578.P10526549616483159858

`A387134(n)%Δ[A038546(n+2)]`
-/

namespace A387578.P10526549616483159858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038546 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387134 n) (f1 (n + 1) - f1 n)

end

end A387578.P10526549616483159858

/-!
# A387579: Number of not necessarily distinct prime factors (bigomega) of the greatest common divisor of the prime indices of n.

The programs for A387579, there is no canonical definition to state claims against.
-/

/-! ## A387579.P12070428419585519723

`∑{e}[A289508(n+1), #]`
-/

namespace A387579.P12070428419585519723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A387579.P12070428419585519723

/-! ## A387579.P12824964821433455057

`A001222(A289508(n+1)+floor(1/(n+1)))`
-/

namespace A387579.P12824964821433455057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A289508 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A387579.P12824964821433455057

/-! ## A387579.P16265016577976879037

`A001222(A289508(n+1)-(n+2)%(n+1)+1)`
-/

namespace A387579.P16265016577976879037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A289508 (n + 1) - (((n + 2) % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A387579.P16265016577976879037

/-! ## A387579.P15798101095897151361

`A001222(or(A000007(n), A289508(n+1)))`
-/

namespace A387579.P15798101095897151361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000007 n) (A289508 (n + 1))).toNat

end

end A387579.P15798101095897151361

/-! ## A387579.P13258263806913561411

`A001222(xor(A000007(n), A289508(n+1)))`
-/

namespace A387579.P13258263806913561411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A000007 n) (A289508 (n + 1))).toNat

end

end A387579.P13258263806913561411

/-! ## A387579.P11635842591082382361

`A001222(gcd(A003963(n+1), A289508(n+1)))`
-/

namespace A387579.P11635842591082382361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A003963 (n + 1)) (A289508 (n + 1)))

end

end A387579.P11635842591082382361

/-! ## A387579.P11437783903057049541

`A001222(or(A010054(n+1), A289508(n+1)))`
-/

namespace A387579.P11437783903057049541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A010054 (n + 1)) (A289508 (n + 1))).toNat

end

end A387579.P11437783903057049541

/-! ## A387579.P1367928751296708523

`A001222(or(A188642(n+4), A289508(n+1)))`
-/

namespace A387579.P1367928751296708523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A188642 (n + 4)) (A289508 (n + 1))).toNat

end

end A387579.P1367928751296708523

/-! ## A387579.P4802559550233206293

`∑{e}[gcd(A354871(n+1), A363941(n+1)), #]`
-/

namespace A387579.P4802559550233206293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A354871 (n + 1)) (A363941 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A387579.P4802559550233206293

/-! ## A387579.P1165855493108366674

`A340928(A327531(n+1))`
-/

namespace A387579.P1165855493108366674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340928 (A327531 (n + 1)).toNat

end

end A387579.P1165855493108366674

/-!
# A387581: Number of matchings in the n-trapezohedral graph.

The programs for A387581, there is no canonical definition to state claims against.
-/

/-! ## A387581.P1389933505098468391

`A353159(A294504(n))`
-/

namespace A387581.P1389933505098468391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353159 (A294504 n).toNat

end

end A387581.P1389933505098468391

/-!
# A387584: Size of largest subset of {1, ..., n} such that any 4 elements (a <= b <= c <= d) whose product is square implies a*d = b*c.

The programs for A387584, there is no canonical definition to state claims against.
-/

/-! ## A387584.P15099423405522294077

`∑[A008966(∑[A033445(n)])]`
-/

namespace A387584.P15099423405522294077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387584.P15099423405522294077

/-! ## A387584.P17963769939314073467

`A070939(∑[A336130(∏{p}[n+1, #])])`
-/

namespace A387584.P17963769939314073467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336130 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A387584.P17963769939314073467

/-! ## A387584.P9938534566404382145

`∑[A008966((n+1)*A158092(n+1)+n+1)]`
-/

namespace A387584.P9938534566404382145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 ((n + 1 : ℤ) * A158092 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387584.P9938534566404382145

/-! ## A387584.P17657782804347740080

`A070939(∑[A143586(∏{p}[n+1, #])])`
-/

namespace A387584.P17657782804347740080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143586 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A387584.P17657782804347740080

/-! ## A387584.P13038313351568266690

`A372306(n+1)-A286052(A130528(n))`
-/

namespace A387584.P13038313351568266690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (n + 1) - A286052 (A130528 n).toNat

end

end A387584.P13038313351568266690

/-!
# A387587: Number of minimal vertex cuts in the n-trapezohedral graph.

The programs for A387587, there is no canonical definition to state claims against.
-/

/-! ## A387587.P3956304416084467473

`A297001(n+3)+A029904(A029896(n))`
-/

namespace A387587.P3956304416084467473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297001 (n + 3) + A029904 (A029896 n).toNat

end

end A387587.P3956304416084467473

/-!
# A387591: Primes prime(k) such that (k+1)*prime(k) < k*prime(k+1).

The programs for A387591, there is no canonical definition to state claims against.
-/

/-! ## A387591.P7151245440666077159

`or(A033630(A209760(3*n+1)), A167706(n+1))`
-/

namespace A387591.P7151245440666077159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033630 (A209760 (3 * n + 1)).toNat) (A167706 (n + 1))

end

end A387591.P7151245440666077159

/-! ## A387591.P3959676073097226477

`record[A076272(2*(n+2))/A344713(n+1)]`
-/

namespace A387591.P3959676073097226477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076272 (2 * (n + 2)) : ℚ) / (A344713 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387591.P3959676073097226477

/-! ## A387591.P8675347034760588321

`A377774(A016825(n)*A025584(n+1))`
-/

namespace A387591.P8675347034760588321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377774 (A016825 n * A025584 (n + 1)).toNat

end

end A387591.P8675347034760588321

/-! ## A387591.P17749370902172201123

`or(A124560(A190718(n+4)), A167706(n+1))`
-/

namespace A387591.P17749370902172201123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124560 (A190718 (n + 4)).toNat) (A167706 (n + 1))

end

end A387591.P17749370902172201123

/-! ## A387591.P11642288616410690964

`or(A167706(n+1), A373403(A259366(n+4)))`
-/

namespace A387591.P11642288616410690964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167706 (n + 1)) (A373403 (A259366 (n + 4)).toNat)

end

end A387591.P11642288616410690964

/-!
# A387596: Number of maximum matchings in the n-Cameron graph.

The programs for A387596, the canonical program `A387596.P16706952210142339577` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387596 has offset 1).

The definition of A387596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387596.P16706952210142339577

`3*a(n-1)+a(n-2)-5*a(n-3)+a(n-4)` with `a(0)=7, a(1)=20, a(2)=53, a(3)=147`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387596

/-- `3*a(n-1)+a(n-2)-5*a(n-3)+a(n-4)` -/
def P16706952210142339577.Spec : Prop :=
  ∀ n, P16706952210142339577.a n = A387596 (n + 1)

theorem P16706952210142339577.correct : P16706952210142339577.Spec := by
  intro n
  simp only [A387596, Nat.add_sub_cancel]

end A387596

/-!
# A387597: Triangle read by rows: T(n,k) = Sum_{j=0..2k} (-1)^j * binomial(2k,j) * (k-j)^(2n).

The programs for A387597, there is no canonical definition to state claims against.
-/

/-! ## A387597.P3577364041175596811

`A269945(n)/A394692(n)*A392337(n)`
-/

namespace A387597.P3577364041175596811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269945 n : ℚ) / (A394692 n : ℚ) * (A392337 n : ℚ)

end

end A387597.P3577364041175596811

/-! ## A387597.P10407087763207305479

`A269945(n)/A395456(n)*A390029(n)`
-/

namespace A387597.P10407087763207305479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269945 n : ℚ) / (A395456 n : ℚ) * (A390029 n : ℚ)

end

end A387597.P10407087763207305479

/-! ## A387597.P12969477809476189845

`A155124(n)*A304330(n)`
-/

namespace A387597.P12969477809476189845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n * A304330 n

end

end A387597.P12969477809476189845

/-! ## A387597.P1634991473035750191

`A238303(n)*A304330(n)`
-/

namespace A387597.P1634991473035750191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n * A304330 n

end

end A387597.P1634991473035750191

/-!
# A387598: a(n) is the number of 3 element sets of distinct integer sided strict rectangles that fill an n X n square.

The programs for A387598, the canonical program `A387598.P5535459554804066709` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387598 has offset 1).

The definition of A387598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387598.P5535459554804066709

`floor(n/2)*(n-2)+round((n-2)²/12)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A387598

/-- `floor(n/2)*(n-2)+round((n-2)²/12)` -/
def P5535459554804066709.Spec : Prop :=
  ∀ n, P5535459554804066709.a n = A387598 (n + 1)

theorem P5535459554804066709.correct : P5535459554804066709.Spec := by
  intro n
  simp only [A387598, Nat.add_sub_cancel]

end A387598

/-!
# A387599: Number of ways to tile a strip of length n with squares, dominoes and trominoes, using an equal number of dominoes and trominoes.

The programs for A387599, there is no canonical definition to state claims against.
-/

/-! ## A387599.P14567143740181367495

`A156724(A000009(2*(n+2))-A000212(n+2))`
-/

namespace A387599.P14567143740181367495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A000009 (2 * (n + 2)) - A000212 (n + 2)).toNat

end

end A387599.P14567143740181367495

/-! ## A387599.P3962755489152475438

`A048266(A098577(n))`
-/

namespace A387599.P3962755489152475438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A098577 n).toNat

end

end A387599.P3962755489152475438

/-! ## A387599.P17391352375686774337

`A098577(A087036(n))`
-/

namespace A387599.P17391352375686774337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098577 (A087036 n).toNat

end

end A387599.P17391352375686774337

/-! ## A387599.P14963830262303833630

`A098577(A087051(n))`
-/

namespace A387599.P14963830262303833630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098577 (A087051 n).toNat

end

end A387599.P14963830262303833630

/-! ## A387599.P15037209877996372762

`A178832(A011887(n))`
-/

namespace A387599.P15037209877996372762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A011887 n).toNat

end

end A387599.P15037209877996372762

