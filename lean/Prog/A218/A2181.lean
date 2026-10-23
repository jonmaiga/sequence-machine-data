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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024

/-!
# A218100: Primes generating record-sized non-pandigital power.

The programs for A218100, there is no canonical definition to state claims against.
-/

/-! ## A218100.P18171325382860779068

`p?[record[A039634(A291518(n))]]`
-/

namespace A218100.P18171325382860779068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A291518 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218100.P18171325382860779068

/-! ## A218100.P18252694069856187192

`record[A039634(A291518(n+3))]`
-/

namespace A218100.P18252694069856187192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A291518 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218100.P18252694069856187192

/-! ## A218100.P16118785622978517267

`record[A039634(2*A291518(n))]`
-/

namespace A218100.P16118785622978517267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (2 * A291518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218100.P16118785622978517267

/-!
# A218101: The number of simple labeled graphs on n nodes that have exactly n(n-1)/4 edges.

The programs for A218101, there is no canonical definition to state claims against.
-/

/-! ## A218101.P9315582273309873965

`A126869(∑[n])`
-/

namespace A218101.P9315582273309873965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218101.P9315582273309873965

/-! ## A218101.P7552098380683111831

`C(∑[n], A001281(∑[n]))`
-/

namespace A218101.P7552098380683111831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A001281 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A218101.P7552098380683111831

/-! ## A218101.P7145910900730705599

`C(∑[n], A006370(∑[n]))`
-/

namespace A218101.P7145910900730705599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A006370 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A218101.P7145910900730705599

/-! ## A218101.P14052975543405277681

`C(∑[n], A014682(∑[n]))`
-/

namespace A218101.P14052975543405277681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A014682 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A218101.P14052975543405277681

/-! ## A218101.P3938266815554184002

`lcm(A028242(n), A126869(A000217(n)))`
-/

namespace A218101.P3938266815554184002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028242 n) (A126869 (A000217 n).toNat)

end

end A218101.P3938266815554184002

/-!
# A218102: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+1)^(n-1) * (n*x)^n * A(n*x)^n/n! * exp(-(n+1)*n*x*A(n*x)).

The programs for A218102, there is no canonical definition to state claims against.
-/

/-! ## A218102.P15851950138036259072

`A243058(A056786(n))`
-/

namespace A218102.P15851950138036259072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243058 (A056786 n).toNat

end

end A218102.P15851950138036259072

/-!
# A218103: Number of transitive reflexive early confluent binary relations R on n+3 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218103, there is no canonical definition to state claims against.
-/

/-! ## A218103.P14557685197347415773

`A135313(∑[n+3]+n+3)`
-/

namespace A218103.P14557685197347415773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A218103.P14557685197347415773

/-! ## A218103.P16969678217922331732

`record[A135313(A060577(n))]`
-/

namespace A218103.P16969678217922331732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218103.P16969678217922331732

/-! ## A218103.P9534781689503367160

`record[A135313(abs(A046691(n)))]`
-/

namespace A218103.P9534781689503367160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218103.P9534781689503367160

/-! ## A218103.P17171562936736165466

`record[A023531(n+3)*A135313(n)]`
-/

namespace A218103.P17171562936736165466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 3) * A135313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218103.P17171562936736165466

/-! ## A218103.P11068761638628340677

`A135313(A046691(n+2))%A320622(n+9)`
-/

namespace A218103.P11068761638628340677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135313 (A046691 (n + 2)).toNat) (A320622 (n + 9))

end

end A218103.P11068761638628340677

/-!
# A218104: Number of transitive reflexive early confluent binary relations R on n+4 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218104, there is no canonical definition to state claims against.
-/

/-! ## A218104.P1137081704712252978

`A135313(A052905(n+2))`
-/

namespace A218104.P1137081704712252978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A052905 (n + 2)).toNat

end

end A218104.P1137081704712252978

/-! ## A218104.P4294033776200783372

`A135313(eq[4, A025581(n)])`
-/

namespace A218104.P4294033776200783372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218104.P4294033776200783372

/-! ## A218104.P5424045814929006921

`A135313(A055999(n+2)+1)`
-/

namespace A218104.P5424045814929006921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A055999 (n + 2) + 1).toNat

end

end A218104.P5424045814929006921

/-! ## A218104.P5841355746751362428

`A135313(A056000(n+1)+5)`
-/

namespace A218104.P5841355746751362428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A056000 (n + 1) + 5).toNat

end

end A218104.P5841355746751362428

/-! ## A218104.P11237592772786656314

`A135313(A034856(n+3)+n+2)`
-/

namespace A218104.P11237592772786656314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A218104.P11237592772786656314

/-! ## A218104.P13151362278505073968

`A135313(A167614(n+2)+A005408(n))`
-/

namespace A218104.P13151362278505073968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A167614 (n + 2) + A005408 n).toNat

end

end A218104.P13151362278505073968

/-! ## A218104.P14327310526276598451

`A135313(A005408(n+2)+A000096(n+2))`
-/

namespace A218104.P14327310526276598451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A005408 (n + 2) + A000096 (n + 2)).toNat

end

end A218104.P14327310526276598451

/-!
# A218105: Number of transitive reflexive early confluent binary relations R on n+5 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218105, there is no canonical definition to state claims against.
-/

/-! ## A218105.P15007917373631642698

`A135313(A055999(n+3))`
-/

namespace A218105.P15007917373631642698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A055999 (n + 3)).toNat

end

end A218105.P15007917373631642698

/-! ## A218105.P807706975826005962

`A135313(eq[5, A025581(n)])`
-/

namespace A218105.P807706975826005962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218105.P807706975826005962

/-! ## A218105.P14295693823776016058

`A135313(eq[6, A004736(n+1)])`
-/

namespace A218105.P14295693823776016058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218105.P14295693823776016058

/-! ## A218105.P13957397222631025133

`A135313(Δ[Δ[A006504(n+1)]]-1)`
-/

namespace A218105.P13957397222631025133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (f1 (n + 1) - f1 n - 1).toNat

end

end A218105.P13957397222631025133

/-! ## A218105.P4168377710826797471

`A135313(A167614(n+3)+A004277(n+1))`
-/

namespace A218105.P4168377710826797471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A167614 (n + 3) + A004277 (n + 1)).toNat

end

end A218105.P4168377710826797471

/-!
# A218106: Number of transitive reflexive early confluent binary relations R on n+6 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218106, there is no canonical definition to state claims against.
-/

/-! ## A218106.P5521617613456342286

`A135313(eq[6, A025581(n)])`
-/

namespace A218106.P5521617613456342286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218106.P5521617613456342286

/-! ## A218106.P15365159250896061923

`A135313(eq[7, A193739(n)])`
-/

namespace A218106.P15365159250896061923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218106.P15365159250896061923

/-! ## A218106.P1583709378779408367

`A135313(eq[13, A099375(n)])`
-/

namespace A218106.P1583709378779408367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218106.P1583709378779408367

/-! ## A218106.P15402162262736141326

`A135313(A155212(n+3)+1)`
-/

namespace A218106.P15402162262736141326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A155212 (n + 3) + 1).toNat

end

end A218106.P15402162262736141326

/-! ## A218106.P11290074887930552851

`A135313(eq[7, A004736(n+1)])`
-/

namespace A218106.P11290074887930552851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218106.P11290074887930552851

/-! ## A218106.P4669857729099021649

`A135313(eq[11, A027293(n+1)])`
-/

namespace A218106.P4669857729099021649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218106.P4669857729099021649

/-!
# A218107: Number of transitive reflexive early confluent binary relations R on n+7 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218107, there is no canonical definition to state claims against.
-/

/-! ## A218107.P12925898064849628259

`A135313(A155212(n+4))`
-/

namespace A218107.P12925898064849628259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A155212 (n + 4)).toNat

end

end A218107.P12925898064849628259

/-! ## A218107.P4966059214495069564

`A135313(eq[7, A025581(n)])`
-/

namespace A218107.P4966059214495069564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218107.P4966059214495069564

/-! ## A218107.P4418792291592504718

`A135313(eq[8, A193739(n)])`
-/

namespace A218107.P4418792291592504718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218107.P4418792291592504718

/-! ## A218107.P16856760641638358305

`A135313(eq[8, A004736(n+1)])`
-/

namespace A218107.P16856760641638358305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218107.P16856760641638358305

/-! ## A218107.P13721909718136507940

`A135313(2*n+A000217(n+6)+7)`
-/

namespace A218107.P13721909718136507940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A218107.P13721909718136507940

/-!
# A218108: Number of transitive reflexive early confluent binary relations R on n+8 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218108, there is no canonical definition to state claims against.
-/

/-! ## A218108.P7405880763831132040

`A135313(eq[3, A104975(n)])`
-/

namespace A218108.P7405880763831132040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218108.P7405880763831132040

/-! ## A218108.P5524002540649885084

`A135313(eq[6, A264391(n)])`
-/

namespace A218108.P5524002540649885084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218108.P5524002540649885084

/-! ## A218108.P1406524279283123584

`A135313(eq[8, A025581(n)])`
-/

namespace A218108.P1406524279283123584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218108.P1406524279283123584

/-! ## A218108.P18309244470915584242

`A135313(eq[9, A193739(n)])`
-/

namespace A218108.P18309244470915584242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218108.P18309244470915584242

/-! ## A218108.P10379173763207807880

`A135313(eq[9, A004736(n+1)])`
-/

namespace A218108.P10379173763207807880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218108.P10379173763207807880

/-!
# A218109: Number of transitive reflexive early confluent binary relations R on n+9 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218109, there is no canonical definition to state claims against.
-/

/-! ## A218109.P7346822015385540321

`A135313(A056000(n+6))`
-/

namespace A218109.P7346822015385540321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A056000 (n + 6)).toNat

end

end A218109.P7346822015385540321

/-! ## A218109.P17159562949715259004

`A135313(eq[9, A025581(n)])`
-/

namespace A218109.P17159562949715259004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218109.P17159562949715259004

/-!
# A218110: Number of transitive reflexive early confluent binary relations R on n+10 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218110, there is no canonical definition to state claims against.
-/

/-! ## A218110.P13783764122703062691

`A135313(eq[10, A025581(n)])`
-/

namespace A218110.P13783764122703062691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218110.P13783764122703062691

/-!
# A218111: Number of transitive reflexive early confluent binary relations R on n+1 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218111, there is no canonical definition to state claims against.
-/

/-! ## A218111.P6800037946788947465

`A135313(∑[n+2]-1)`
-/

namespace A218111.P6800037946788947465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A218111.P6800037946788947465

/-! ## A218111.P680274810698755849

`A135313(A034856(n+1))%((n+2)^n)`
-/

namespace A218111.P680274810698755849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135313 (A034856 (n + 1)).toNat) ((n + 2) ^ n : ℤ)

end

end A218111.P680274810698755849

/-! ## A218111.P9360595944368464948

`A054977(n)*A135313(A034856(n+1))`
-/

namespace A218111.P9360595944368464948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A135313 (A034856 (n + 1)).toNat

end

end A218111.P9360595944368464948

/-! ## A218111.P426693057061560233

`lcm(A033999(n), A135313(A034856(n+1)))`
-/

namespace A218111.P426693057061560233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A135313 (A034856 (n + 1)).toNat)

end

end A218111.P426693057061560233

/-! ## A218111.P13727205636895858566

`A135313(A034856(n+1))+val(A266989(n+1), 2)`
-/

namespace A218111.P13727205636895858566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A034856 (n + 1)).toNat + (SequenceMachineLib.valuation (A266989 (n + 1)).toNat 2 : ℤ)

end

end A218111.P13727205636895858566

/-! ## A218111.P3972441869773572056

`A135313(A034856(n+1))+1-A007318(C(2, n))`
-/

namespace A218111.P3972441869773572056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A034856 (n + 1)).toNat + 1 - A007318 (Nat.choose 2 n)

end

end A218111.P3972441869773572056

/-!
# A218112: Number of transitive reflexive early confluent binary relations R on n+2 labeled elements with max_{x}(|{y : xRy}|) = n.

The programs for A218112, there is no canonical definition to state claims against.
-/

/-! ## A218112.P10576596013323780676

`A135313(∑[n+3])`
-/

namespace A218112.P10576596013323780676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218112.P10576596013323780676

/-! ## A218112.P12940753405996731196

`record[A135313(A060577(n)-n)]`
-/

namespace A218112.P12940753405996731196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A060577 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P12940753405996731196

/-! ## A218112.P17814314194113276486

`record[A135313(A027379(A020986(n)))]`
-/

namespace A218112.P17814314194113276486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A027379 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P17814314194113276486

/-! ## A218112.P14111234458185425013

`record[A135313(A055998(A007599(n)))]`
-/

namespace A218112.P14111234458185425013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A055998 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P14111234458185425013

/-! ## A218112.P3896827788688224660

`record[A135313(A027379(A289814(n)))]`
-/

namespace A218112.P3896827788688224660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A027379 (A289814 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P3896827788688224660

/-! ## A218112.P200634139281539421

`record[A135313(A027379(A003963(n+1)))]`
-/

namespace A218112.P200634139281539421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A027379 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P200634139281539421

/-! ## A218112.P12722246218043215317

`record[A135313(A027379(A004741(n+1)))]`
-/

namespace A218112.P12722246218043215317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A027379 (A004741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P12722246218043215317

/-! ## A218112.P13366804605957271223

`record[A135313(A027379(A032742(n+1)))]`
-/

namespace A218112.P13366804605957271223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A027379 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218112.P13366804605957271223

/-!
# A218113: Number of simple unlabeled graphs with n nodes and n(n-1)/4 edges.

The programs for A218113, there is no canonical definition to state claims against.
-/

/-! ## A218113.P1958233528750599740

`A000717(n+1)*A117188(∑[n])`
-/

namespace A218113.P1958233528750599740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000717 (n + 1) * A117188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218113.P1958233528750599740

/-! ## A218113.P10419784671269485283

`Δ[A004525(n)]*A000717(n+1)`
-/

namespace A218113.P10419784671269485283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000717 (n + 1)

end

end A218113.P10419784671269485283

/-! ## A218113.P17263607690498460427

`A000124(n)%2*A000717(n+1)`
-/

namespace A218113.P17263607690498460427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) 2 * A000717 (n + 1)

end

end A218113.P17263607690498460427

/-! ## A218113.P12199344182333823

`A000717(n+1)*A014577(A002378(n))`
-/

namespace A218113.P12199344182333823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000717 (n + 1) * A014577 (A002378 n).toNat

end

end A218113.P12199344182333823

/-! ## A218113.P15072431956692149234

`A000035(A034856(n+1))*A000717(n+1)`
-/

namespace A218113.P15072431956692149234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034856 (n + 1)).toNat * A000717 (n + 1)

end

end A218113.P15072431956692149234

/-!
# A218115: G.f.: A(x,y) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^5 * y^k] * x^n/n ) = Sum_{n>=0,k=0..n} T(n,k)*x^n*y^k, as a triangle of coefficients T(n,k) read by rows.

The programs for A218115, there is no canonical definition to state claims against.
-/

/-! ## A218115.P7490388601472773704

`A000538(A007318(n*A207539(n)))`
-/

namespace A218115.P7490388601472773704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A007318 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218115.P7490388601472773704

/-! ## A218115.P9512445195233939807

`A000538(A028657(n*A207539(n)))`
-/

namespace A218115.P9512445195233939807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A028657 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218115.P9512445195233939807

/-! ## A218115.P11042893568803895888

`A000538(A059922(n*A207539(n)))`
-/

namespace A218115.P11042893568803895888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A059922 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218115.P11042893568803895888

/-! ## A218115.P11841377705729130961

`A000538(A088699(n*A207539(n)))`
-/

namespace A218115.P11841377705729130961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A088699 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218115.P11841377705729130961

/-! ## A218115.P12375030866406371770

`A000538(A327913(n)^A040625(n))`
-/

namespace A218115.P12375030866406371770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (SequenceMachineLib.roundAway ((A327913 n : ℚ) ^ (A040625 n : ℤ))).toNat

end

end A218115.P12375030866406371770

/-!
# A218116: G.f.: A(x,y) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^6 * y^k] * x^n/n ) = Sum_{n>=0,k=0..n} T(n,k)*x^n*y^k, as a triangle of coefficients T(n,k) read by rows.

The programs for A218116, there is no canonical definition to state claims against.
-/

/-! ## A218116.P7294310794117174429

`A000539(A028657(n*A207539(n)))`
-/

namespace A218116.P7294310794117174429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A028657 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218116.P7294310794117174429

/-! ## A218116.P13542613973112167433

`A000539(A059922(n*A207539(n)))`
-/

namespace A218116.P13542613973112167433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A059922 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218116.P13542613973112167433

/-! ## A218116.P14836740837736096608

`A000539(A101515(n*A207539(n)))`
-/

namespace A218116.P14836740837736096608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A101515 ((n : ℤ) * A207539 n).toNat).toNat

end

end A218116.P14836740837736096608

/-! ## A218116.P3895529378709804334

`A000539(A028657(n)^A207539(n))`
-/

namespace A218116.P3895529378709804334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (SequenceMachineLib.roundAway ((A028657 n : ℚ) ^ (A207539 n : ℤ))).toNat

end

end A218116.P3895529378709804334

/-! ## A218116.P8213656720701513553

`A000539(A343347(n)^A271697(n))`
-/

namespace A218116.P8213656720701513553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (SequenceMachineLib.roundAway ((A343347 n : ℚ) ^ (A271697 n : ℤ))).toNat

end

end A218116.P8213656720701513553

/-!
# A218117: G.f.: A(x) = exp( Sum_{n>=1} A005261(n)*x^n/n ) where A005261(n) = Sum_{k=0..n} C(n,k)^5.

The programs for A218117, there is no canonical definition to state claims against.
-/

/-! ## A218117.P9979441587594109960

`A084938(A084274(n+1))+A060532(n)`
-/

namespace A218117.P9979441587594109960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A084274 (n + 1)).toNat + A060532 n

end

end A218117.P9979441587594109960

/-!
# A218118: G.f.: A(x) = exp( Sum_{n>=1} A005261(n)/2*x^n/n ) where A005261(n) = Sum_{k=0..n} C(n,k)^5.

The programs for A218118, there is no canonical definition to state claims against.
-/

/-! ## A218118.P12252387642741189311

`A003160(∏[∑[n+1]])`
-/

namespace A218118.P12252387642741189311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A218118.P12252387642741189311

/-!
# A218121: Numerator of c(n) defined by c(1)=1, c(2)=5/2 and for n>=3, c(n) is the minimal rational number >= c(n-1) such that there are no primes in the interval (prime(n)/c(n), prime(n+1)/c(n)).

The programs for A218121, there is no canonical definition to state claims against.
-/

/-! ## A218121.P5762544495176695861

`A001359(A001462(n+1))%A123105(n)`
-/

namespace A218121.P5762544495176695861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A001462 (n + 1)).toNat) (A123105 (n + 31))

end

end A218121.P5762544495176695861

/-! ## A218121.P16766714979254425144

`A331946(A001462(n+1)%A331947(n+1))`
-/

namespace A218121.P16766714979254425144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331946 (Int.tmod (A001462 (n + 1)) (A331947 (n + 1))).toNat

end

end A218121.P16766714979254425144

/-! ## A218121.P7118996900099735677

`A331946(A001462(n+1))%A331968(n+3)`
-/

namespace A218121.P7118996900099735677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331946 (A001462 (n + 1)).toNat) (A331968 (n + 3))

end

end A218121.P7118996900099735677

/-! ## A218121.P1030249664493262917

`A331946(Δ[A095114(n+1)]%A331947(n+1))`
-/

namespace A218121.P1030249664493262917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331946 (Int.tmod (f1 (n + 1) - f1 n) (A331947 (n + 1))).toNat

end

end A218121.P1030249664493262917

/-! ## A218121.P16159697861241680391

`A331946((Δ[A109512(n+1)]-1)%A331947(n+1))`
-/

namespace A218121.P16159697861241680391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331946 (Int.tmod (f1 (n + 1) - f1 n - 1) (A331947 (n + 1))).toNat

end

end A218121.P16159697861241680391

/-!
# A218122: a(0)=1, a(1)=1, a(2)=1; thereafter a(n)=a(n-2)^a(n-1)+a(n-3).

The programs for A218122, there is no canonical definition to state claims against.
-/

/-! ## A218122.P9855704732911891882

`floor(a(n-2)^a(n-1)+n/3)` with `a(0)=1, a(1)=1`
-/

namespace A218122.P9855704732911891882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) ^ (a (n - 1) : ℤ) + (n : ℚ) / 3⌋

end

end A218122.P9855704732911891882

/-! ## A218122.P462839394442991153

`a(n-2)^a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A218122.P462839394442991153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) ^ a (n - 1) + a (n - 3)

end

end A218122.P462839394442991153

/-!
# A218124: Number of 7-ary sequences with primitive period n.

The programs for A218124, there is no canonical definition to state claims against.
-/

/-! ## A218124.P7045739298222421631

`A001693(n)*A028310(n)`
-/

namespace A218124.P7045739298222421631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001693 n * A028310 n

end

end A218124.P7045739298222421631

/-! ## A218124.P12969917150348790563

`sqrt(A253909(n))*A001693(n)`
-/

namespace A218124.P12969917150348790563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253909 n : ℝ) * (A001693 n : ℝ)

end

end A218124.P12969917150348790563

/-! ## A218124.P17669308054264922808

`A001693(n)*A065033(2*n)`
-/

namespace A218124.P17669308054264922808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001693 n * A065033 (2 * n)

end

end A218124.P17669308054264922808

/-! ## A218124.P4722314427601154423

`A007318(A000124(n))*A001693(n)`
-/

namespace A218124.P4722314427601154423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A001693 n

end

end A218124.P4722314427601154423

/-! ## A218124.P6283670199224454677

`A001693(n)*A008619(A004273(n))`
-/

namespace A218124.P6283670199224454677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001693 n * A008619 (A004273 n).toNat

end

end A218124.P6283670199224454677

/-! ## A218124.P6299212386033361681

`A001693(n)*A065941(A167614(n+1))`
-/

namespace A218124.P6299212386033361681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001693 n * A065941 (A167614 (n + 1)).toNat

end

end A218124.P6299212386033361681

/-!
# A218125: Number of 8-ary sequences with primitive period n.

The programs for A218125, there is no canonical definition to state claims against.
-/

/-! ## A218125.P7595629119431765979

`A027380(n)*A028310(n)`
-/

namespace A218125.P7595629119431765979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027380 n * A028310 n

end

end A218125.P7595629119431765979

/-! ## A218125.P15539986231267668431

`A000007(n)+n*A027380(n)`
-/

namespace A218125.P15539986231267668431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027380 n

end

end A218125.P15539986231267668431

/-! ## A218125.P11536607281881751625

`A036987(2*n)+n*A027380(n)`
-/

namespace A218125.P11536607281881751625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (n : ℤ) * A027380 n

end

end A218125.P11536607281881751625

/-! ## A218125.P13193316273555156413

`A027380(n)*A193738(A000096(n))`
-/

namespace A218125.P13193316273555156413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027380 n * A193738 (A000096 n).toNat

end

end A218125.P13193316273555156413

/-! ## A218125.P5859970159300810909

`A007318(Δ[A004006(n)])*A027380(n)`
-/

namespace A218125.P5859970159300810909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat * A027380 n

end

end A218125.P5859970159300810909

/-! ## A218125.P14971910048571468672

`A143324(A000217(n+7)-7)+A000007(n)`
-/

namespace A218125.P14971910048571468672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (A000217 (n + 7) - 7).toNat + A000007 n

end

end A218125.P14971910048571468672

/-!
# A218126: Number of 9-ary sequences with primitive period n.

The programs for A218126, there is no canonical definition to state claims against.
-/

/-! ## A218126.P10767339715137740720

`round(1/acot(n))*A027381(n)`
-/

namespace A218126.P10767339715137740720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A027381 n

end

end A218126.P10767339715137740720

/-! ## A218126.P15592447901863658829

`A027381(n)*A028310(n)`
-/

namespace A218126.P15592447901863658829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027381 n * A028310 n

end

end A218126.P15592447901863658829

/-! ## A218126.P15635521013442070554

`A027381(n)*A123108(2*n)`
-/

namespace A218126.P15635521013442070554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027381 n * A123108 (2 * n)

end

end A218126.P15635521013442070554

/-! ## A218126.P7842928182749589059

`A000007(n)+n*A027381(n)`
-/

namespace A218126.P7842928182749589059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027381 n

end

end A218126.P7842928182749589059

/-! ## A218126.P2162416713658208084

`A027381(n)*A101279(Δ[n²])`
-/

namespace A218126.P2162416713658208084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027381 n * A101279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218126.P2162416713658208084

/-! ## A218126.P9687947549652180518

`A007318(A000124(n))*A027381(n)`
-/

namespace A218126.P9687947549652180518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A027381 n

end

end A218126.P9687947549652180518

/-! ## A218126.P4478222638480223905

`A008619(A004273(n))*A027381(n)`
-/

namespace A218126.P4478222638480223905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A027381 n

end

end A218126.P4478222638480223905

/-!
# A218127: Number of 10-ary sequences with primitive period n.

The programs for A218127, there is no canonical definition to state claims against.
-/

/-! ## A218127.P2569988927973867330

`A143324((A000217(n+9)-9)^((A000172(n)+1)%2))`
-/

namespace A218127.P2569988927973867330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (SequenceMachineLib.roundAway ((A000217 (n + 9) - 9 : ℚ) ^ (Int.tmod (A000172 n + 1) 2 : ℤ))).toNat

end

end A218127.P2569988927973867330

/-! ## A218127.P10354433328159810708

`A143324((A000217(n+9)-9)^((A301684(n)+1)%2))`
-/

namespace A218127.P10354433328159810708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (SequenceMachineLib.roundAway ((A000217 (n + 9) - 9 : ℚ) ^ (Int.tmod (A301684 n + 1) 2 : ℤ))).toNat

end

end A218127.P10354433328159810708

/-! ## A218127.P16852384894057695102

`A143324((A000217(n+9)-9)^((A001223(n+1)+1)%2))`
-/

namespace A218127.P16852384894057695102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (SequenceMachineLib.roundAway ((A000217 (n + 9) - 9 : ℚ) ^ (Int.tmod (A001223 (n + 1) + 1) 2 : ℤ))).toNat

end

end A218127.P16852384894057695102

/-! ## A218127.P1947693985330848608

`A143324((A000217(n+9)-9)^((A025586(n+1)+1)%2))`
-/

namespace A218127.P1947693985330848608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (SequenceMachineLib.roundAway ((A000217 (n + 9) - 9 : ℚ) ^ (Int.tmod (A025586 (n + 1) + 1) 2 : ℤ))).toNat

end

end A218127.P1947693985330848608

/-! ## A218127.P1202318589792333522

`A143324((A000217(n+9)-9)^((A011782(2*n)+1)%2))`
-/

namespace A218127.P1202318589792333522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (SequenceMachineLib.roundAway ((A000217 (n + 9) - 9 : ℚ) ^ (Int.tmod (A011782 (2 * n) + 1) 2 : ℤ))).toNat

end

end A218127.P1202318589792333522

/-!
# A218128: a(n) = (A090801(n+2) - 2)/4.

The programs for A218128, there is no canonical definition to state claims against.
-/

/-! ## A218128.P7139835766138118872

`(A090801(n+2)-2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218128.P7139835766138118872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090801 (n + 2) - 2 : ℚ) / 4

end

end A218128.P7139835766138118872

/-! ## A218128.P11064545487745140959

`floor(A090801(n+2)/4)`
-/

namespace A218128.P11064545487745140959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090801 (n + 2) : ℚ) / 4⌋

end

end A218128.P11064545487745140959

/-! ## A218128.P11731415066426429596

`A002265(A090801(n+2))`
-/

namespace A218128.P11731415066426429596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A090801 (n + 2)).toNat

end

end A218128.P11731415066426429596

/-! ## A218128.P6800961419011468198

`A026922(A090801(n+2)+1)`
-/

namespace A218128.P6800961419011468198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A090801 (n + 2) + 1).toNat

end

end A218128.P6800961419011468198

/-! ## A218128.P17764132660624058743

`A025480(A090801(n+2)-1)`
-/

namespace A218128.P17764132660624058743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A090801 (n + 2) - 1).toNat

end

end A218128.P17764132660624058743

/-! ## A218128.P14590826500460090950

`A051724(A090801(n+2)-2)`
-/

namespace A218128.P14590826500460090950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A090801 (n + 2) - 2).toNat

end

end A218128.P14590826500460090950

/-! ## A218128.P5060632539089094494

`A004526(A090801(n+2)/2)`
-/

namespace A218128.P5060632539089094494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A090801 (n + 2) : ℚ) / 2)).toNat

end

end A218128.P5060632539089094494

/-! ## A218128.P10088160419654902089

`A051724(xor(2, A090801(n+2)))`
-/

namespace A218128.P10088160419654902089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Int.xor 2 (A090801 (n + 2))).toNat

end

end A218128.P10088160419654902089

/-! ## A218128.P10618415032821714759

`∑[A131508(Δ[A090801(n+1)])]`
-/

namespace A218128.P10618415032821714759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218128.P10618415032821714759

/-! ## A218128.P3284808872692307128

`xor(2, A090801(n+2))/A020639(2*(n+1))²`
-/

namespace A218128.P3284808872692307128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A090801 (n + 2)) : ℚ) / (A020639 (2 * (n + 1)) ^ 2 : ℚ)

end

end A218128.P3284808872692307128

/-!
# A218129: 2^(((c - 2)^2 + (c - 2))/2) + n = a(n), where c are the positive solutions to {y in N | 2*cos(2*Pi/y) is in Z}; c = {1,2,3,4,6}.

The programs for A218129, there is no canonical definition to state claims against.
-/

/-! ## A218129.P18247497383753947131

`2^(a(n-1)-1)+n` with `a(0)=1`
-/

namespace A218129.P18247497383753947131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℝ) ^ (a (n - 1) - 1) + (n : ℝ)

end

end A218129.P18247497383753947131

/-!
# A218130: Number of length 6 primitive (=aperiodic or period 6) n-ary words.

The programs for A218130, the canonical program `A218130.P6460479873090789891` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218130 has offset 0).

The definition of A218130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218130.P6460479873090789891

`n^6-n^3-n²+n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218130

/-- `n^6-n^3-n²+n` -/
def P6460479873090789891.Spec : Prop :=
  ∀ n, P6460479873090789891.a n = A218130 n

theorem P6460479873090789891.correct : P6460479873090789891.Spec := by
  intro n
  simp only [A218130]

end A218130

/-! ## A218130.P11776428824939960933

`lcm(2, A061600(n²)-A061600(n))`
-/

namespace A218130.P11776428824939960933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A061600 (n ^ 2) - A061600 n)

end

end A218130.P11776428824939960933

namespace A218130

/-- `lcm(2, A061600(n²)-A061600(n))` -/
def P11776428824939960933.Spec : Prop :=
  ∀ n, (P11776428824939960933.a n : ℤ) = A218130 n

end A218130

/-!
# A218131: Number of length 8 primitive (=aperiodic or period 8) n-ary words.

The programs for A218131, the canonical program `A218131.P16680872761281516940` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218131 has offset 0).

The definition of A218131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218131.P16680872761281516940

`n^8-n^4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218131

/-- `n^8-n^4` -/
def P16680872761281516940.Spec : Prop :=
  ∀ n, P16680872761281516940.a n = A218131 n

theorem P16680872761281516940.correct : P16680872761281516940.Spec := by
  intro n
  simp only [A218131]

end A218131

/-! ## A218131.P12794448917901460592

`2*C(n^4, 2)`
-/

namespace A218131.P12794448917901460592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n ^ 4) 2

end

end A218131.P12794448917901460592

namespace A218131

/-- `2*C(n^4, 2)` -/
def P12794448917901460592.Spec : Prop :=
  ∀ n, (P12794448917901460592.a n : ℤ) = A218131 n

end A218131

/-! ## A218131.P14055599576644508635

`lcm(2, 2*C(n²², 2))`
-/

namespace A218131.P14055599576644508635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * Nat.choose ((n ^ 2) ^ 2) 2)

end

end A218131.P14055599576644508635

namespace A218131

/-- `lcm(2, 2*C(n²², 2))` -/
def P14055599576644508635.Spec : Prop :=
  ∀ n, (P14055599576644508635.a n : ℤ) = A218131 n

end A218131

/-! ## A218131.P240940908123641822

`lcm(1-n²², n²²)`
-/

namespace A218131.P240940908123641822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((n ^ 2) ^ 2 : ℤ)) ((n ^ 2) ^ 2 : ℤ)

end

end A218131.P240940908123641822

namespace A218131

/-- `lcm(1-n²², n²²)` -/
def P240940908123641822.Spec : Prop :=
  ∀ n, (P240940908123641822.a n : ℤ) = A218131 n

end A218131

/-! ## A218131.P5517506811436224172

`∑[2*Δ[C((1-n)²², 2)]]`
-/

namespace A218131.P5517506811436224172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((1 - (n : ℤ)) ^ 2) ^ 2).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218131.P5517506811436224172

namespace A218131

/-- `∑[2*Δ[C((1-n)²², 2)]]` -/
def P5517506811436224172.Spec : Prop :=
  ∀ n, P5517506811436224172.a n = A218131 n

end A218131

/-! ## A218131.P9344667679100995986

`n²*A136008(n)`
-/

namespace A218131.P9344667679100995986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A136008 n

end

end A218131.P9344667679100995986

namespace A218131

/-- `n²*A136008(n)` -/
def P9344667679100995986.Spec : Prop :=
  ∀ n, P9344667679100995986.a n = A218131 n

end A218131

/-! ## A218131.P2970153136356700854

`n^3*A061167(n)`
-/

namespace A218131.P2970153136356700854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A061167 n

end

end A218131.P2970153136356700854

namespace A218131

/-- `n^3*A061167(n)` -/
def P2970153136356700854.Spec : Prop :=
  ∀ n, P2970153136356700854.a n = A218131 n

end A218131

/-! ## A218131.P9585690366695847604

`abs(n²²*A024002(n))`
-/

namespace A218131.P9585690366695847604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) * A024002 n|

end

end A218131.P9585690366695847604

namespace A218131

/-- `abs(n²²*A024002(n))` -/
def P9585690366695847604.Spec : Prop :=
  ∀ n, P9585690366695847604.a n = A218131 n

end A218131

/-! ## A218131.P2922639683496866679

`(A001014(n)-n²)*n²`
-/

namespace A218131.P2922639683496866679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001014 n - (n ^ 2 : ℤ)) * (n ^ 2 : ℤ)

end

end A218131.P2922639683496866679

namespace A218131

/-- `(A001014(n)-n²)*n²` -/
def P2922639683496866679.Spec : Prop :=
  ∀ n, P2922639683496866679.a n = A218131 n

end A218131

/-! ## A218131.P10011256008627232793

`A011379(n)*A037250(n)`
-/

namespace A218131.P10011256008627232793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n * A037250 n

end

end A218131.P10011256008627232793

namespace A218131

/-- `A011379(n)*A037250(n)` -/
def P10011256008627232793.Spec : Prop :=
  ∀ n, P10011256008627232793.a n = A218131 n

end A218131

/-! ## A218131.P15979287548804191848

`A027445(n)*A085537(n)`
-/

namespace A218131.P15979287548804191848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n * A085537 n

end

end A218131.P15979287548804191848

namespace A218131

/-- `A027445(n)*A085537(n)` -/
def P15979287548804191848.Spec : Prop :=
  ∀ n, P15979287548804191848.a n = A218131 n

end A218131

/-! ## A218131.P7793270066649455329

`A002522(n)*A136038(n)`
-/

namespace A218131.P7793270066649455329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A136038 n

end

end A218131.P7793270066649455329

namespace A218131

/-- `A002522(n)*A136038(n)` -/
def P7793270066649455329.Spec : Prop :=
  ∀ n, P7793270066649455329.a n = A218131 n

end A218131

/-! ## A218131.P12780829110026463677

`A053698(n)*A085538(n)`
-/

namespace A218131.P12780829110026463677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n * A085538 n

end

end A218131.P12780829110026463677

namespace A218131

/-- `A053698(n)*A085538(n)` -/
def P12780829110026463677.Spec : Prop :=
  ∀ n, P12780829110026463677.a n = A218131 n

end A218131

/-! ## A218131.P11444274944293117246

`A062158(n)*A101362(n)`
-/

namespace A218131.P11444274944293117246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 n * A101362 n

end

end A218131.P11444274944293117246

namespace A218131

/-- `A062158(n)*A101362(n)` -/
def P11444274944293117246.Spec : Prop :=
  ∀ n, P11444274944293117246.a n = A218131 n

end A218131

/-! ## A218131.P3988158980154901257

`A034262(n)*A133754(n)`
-/

namespace A218131.P3988158980154901257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n * A133754 n

end

end A218131.P3988158980154901257

namespace A218131

/-- `A034262(n)*A133754(n)` -/
def P3988158980154901257.Spec : Prop :=
  ∀ n, P3988158980154901257.a n = A218131 n

end A218131

/-! ## A218131.P10385334784681746064

`A006011(n)*A173116(n)`
-/

namespace A218131.P10385334784681746064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n * A173116 n

end

end A218131.P10385334784681746064

namespace A218131

/-- `A006011(n)*A173116(n)` -/
def P10385334784681746064.Spec : Prop :=
  ∀ n, P10385334784681746064.a n = A218131 n

end A218131

/-! ## A218131.P4615293754409758260

`A136008(n)*A253909(n)`
-/

namespace A218131.P4615293754409758260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136008 n * A253909 n

end

end A218131.P4615293754409758260

namespace A218131

/-- `A136008(n)*A253909(n)` -/
def P4615293754409758260.Spec : Prop :=
  ∀ n, P4615293754409758260.a n = A218131 n

end A218131

/-! ## A218131.P11092894090138250741

`abs(A000583(n)-A001016(n))`
-/

namespace A218131.P11092894090138250741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A001016 n|

end

end A218131.P11092894090138250741

namespace A218131

/-- `abs(A000583(n)-A001016(n))` -/
def P11092894090138250741.Spec : Prop :=
  ∀ n, P11092894090138250741.a n = A218131 n

end A218131

/-! ## A218131.P9005273486976854976

`(A100019(n)+A000584(n))*A045991(n)`
-/

namespace A218131.P9005273486976854976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100019 n + A000584 n) * A045991 n

end

end A218131.P9005273486976854976

namespace A218131

/-- `(A100019(n)+A000584(n))*A045991(n)` -/
def P9005273486976854976.Spec : Prop :=
  ∀ n, P9005273486976854976.a n = A218131 n

end A218131

/-! ## A218131.P15289951411198254626

`(A002604(n)-A002523(n))*A002522(n)`
-/

namespace A218131.P15289951411198254626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002604 n - A002523 n) * A002522 n

end

end A218131.P15289951411198254626

namespace A218131

/-- `(A002604(n)-A002523(n))*A002522(n)` -/
def P15289951411198254626.Spec : Prop :=
  ∀ n, P15289951411198254626.a n = A218131 n

end A218131

/-!
# A218132: Number of length 9 primitive (=aperiodic or period 9) n-ary words.

The programs for A218132, the canonical program `A218132.P14114599560491314620` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218132 has offset 0).

The definition of A218132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218132.P14114599560491314620

`n^9-n^3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218132

/-- `n^9-n^3` -/
def P14114599560491314620.Spec : Prop :=
  ∀ n, P14114599560491314620.a n = A218132 n

theorem P14114599560491314620.correct : P14114599560491314620.Spec := by
  intro n
  simp only [A218132]

end A218132

/-! ## A218132.P1121190920575957809

`6*C(n*n²+1, 3)`
-/

namespace A218132.P1121190920575957809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n * n ^ 2 + 1) 3

end

end A218132.P1121190920575957809

namespace A218132

/-- `6*C(n*n²+1, 3)` -/
def P1121190920575957809.Spec : Prop :=
  ∀ n, (P1121190920575957809.a n : ℤ) = A218132 n

end A218132

/-! ## A218132.P7809894183292642244

`n²*A133499(n)`
-/

namespace A218132.P7809894183292642244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A133499 n

end

end A218132.P7809894183292642244

namespace A218132

/-- `n²*A133499(n)` -/
def P7809894183292642244.Spec : Prop :=
  ∀ n, P7809894183292642244.a n = A218132 n

end A218132

/-! ## A218132.P13661458782858090865

`n*(A001016(n)-n²)`
-/

namespace A218132.P13661458782858090865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001016 n - (n ^ 2 : ℤ))

end

end A218132.P13661458782858090865

namespace A218132

/-- `n*(A001016(n)-n²)` -/
def P13661458782858090865.Spec : Prop :=
  ∀ n, P13661458782858090865.a n = A218132 n

end A218132

/-! ## A218132.P15847455105184717427

`(A001015(n)-n)*n²`
-/

namespace A218132.P15847455105184717427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001015 n - (n : ℤ)) * (n ^ 2 : ℤ)

end

end A218132.P15847455105184717427

namespace A218132

/-- `(A001015(n)-n)*n²` -/
def P15847455105184717427.Spec : Prop :=
  ∀ n, P15847455105184717427.a n = A218132 n

end A218132

/-! ## A218132.P1535632353462211453

`n*lcm(n², A024004(n))`
-/

namespace A218132.P1535632353462211453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (n ^ 2 : ℤ) (A024004 n)

end

end A218132.P1535632353462211453

namespace A218132

/-- `n*lcm(n², A024004(n))` -/
def P1535632353462211453.Spec : Prop :=
  ∀ n, (P1535632353462211453.a n : ℤ) = A218132 n

end A218132

/-! ## A218132.P3354350632610993672

`n*(A000583(n)²-n²)`
-/

namespace A218132.P3354350632610993672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000583 n ^ 2 - (n ^ 2 : ℤ))

end

end A218132.P3354350632610993672

namespace A218132

/-- `n*(A000583(n)²-n²)` -/
def P3354350632610993672.Spec : Prop :=
  ∀ n, P3354350632610993672.a n = A218132 n

end A218132

/-! ## A218132.P15866474780481776025

`(A258806(n)-(n+1))*n²`
-/

namespace A218132.P15866474780481776025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258806 n - (n + 1 : ℤ)) * (n ^ 2 : ℤ)

end

end A218132.P15866474780481776025

namespace A218132

/-- `(A258806(n)-(n+1))*n²` -/
def P15866474780481776025.Spec : Prop :=
  ∀ n, P15866474780481776025.a n = A218132 n

end A218132

/-! ## A218132.P16163548426774687517

`A033581(n)*A108495(n)`
-/

namespace A218132.P16163548426774687517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n * A108495 n

end

end A218132.P16163548426774687517

namespace A218132

/-- `A033581(n)*A108495(n)` -/
def P16163548426774687517.Spec : Prop :=
  ∀ n, P16163548426774687517.a n = A218132 n

end A218132

/-! ## A218132.P11188430837101799837

`A059826(n)*A133754(n)`
-/

namespace A218132.P11188430837101799837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059826 n * A133754 n

end

end A218132.P11188430837101799837

namespace A218132

/-- `A059826(n)*A133754(n)` -/
def P11188430837101799837.Spec : Prop :=
  ∀ n, P11188430837101799837.a n = A218132 n

end A218132

/-! ## A218132.P874735546255603019

`A045991(n)*A228290(n)`
-/

namespace A218132.P874735546255603019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n * A228290 n

end

end A218132.P874735546255603019

namespace A218132

/-- `A045991(n)*A228290(n)` -/
def P874735546255603019.Spec : Prop :=
  ∀ n, P874735546255603019.a n = A218132 n

end A218132

/-! ## A218132.P14058998485990624798

`A133499(n)*A253909(n)`
-/

namespace A218132.P14058998485990624798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133499 n * A253909 n

end

end A218132.P14058998485990624798

namespace A218132

/-- `A133499(n)*A253909(n)` -/
def P14058998485990624798.Spec : Prop :=
  ∀ n, P14058998485990624798.a n = A218132 n

end A218132

/-! ## A218132.P16416193488195490816

`lcm(A000578(n), A024004(n))`
-/

namespace A218132.P16416193488195490816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n) (A024004 n)

end

end A218132.P16416193488195490816

namespace A218132

/-- `lcm(A000578(n), A024004(n))` -/
def P16416193488195490816.Spec : Prop :=
  ∀ n, (P16416193488195490816.a n : ℤ) = A218132 n

end A218132

/-! ## A218132.P9912249183580077056

`lcm(A024001(n), A037251(n))`
-/

namespace A218132.P9912249183580077056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024001 n) (A037251 n)

end

end A218132.P9912249183580077056

namespace A218132

/-- `lcm(A024001(n), A037251(n))` -/
def P9912249183580077056.Spec : Prop :=
  ∀ n, (P9912249183580077056.a n : ℤ) = A218132 n

end A218132

/-! ## A218132.P7300335332943966185

`lcm(A085537(n), A133499(n))`
-/

namespace A218132.P7300335332943966185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085537 n) (A133499 n)

end

end A218132.P7300335332943966185

namespace A218132

/-- `lcm(A085537(n), A133499(n))` -/
def P7300335332943966185.Spec : Prop :=
  ∀ n, (P7300335332943966185.a n : ℤ) = A218132 n

end A218132

/-! ## A218132.P6538147075509918708

`abs(A024001(n)-A024007(n))`
-/

namespace A218132.P6538147075509918708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024001 n - A024007 n|

end

end A218132.P6538147075509918708

namespace A218132

/-- `abs(A024001(n)-A024007(n))` -/
def P6538147075509918708.Spec : Prop :=
  ∀ n, P6538147075509918708.a n = A218132 n

end A218132

/-! ## A218132.P17793398474578599204

`A002061(n+1)*A037251(n)`
-/

namespace A218132.P17793398474578599204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A037251 n

end

end A218132.P17793398474578599204

namespace A218132

/-- `A002061(n+1)*A037251(n)` -/
def P17793398474578599204.Spec : Prop :=
  ∀ n, P17793398474578599204.a n = A218132 n

end A218132

/-! ## A218132.P11689681093132048411

`A091940(n+1)*A135497(n)`
-/

namespace A218132.P11689681093132048411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1) * A135497 n

end

end A218132.P11689681093132048411

namespace A218132

/-- `A091940(n+1)*A135497(n)` -/
def P11689681093132048411.Spec : Prop :=
  ∀ n, P11689681093132048411.a n = A218132 n

end A218132

/-! ## A218132.P515712388066160061

`A033582(n)*A208537(n+1)`
-/

namespace A218132.P515712388066160061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n * A208537 (n + 1)

end

end A218132.P515712388066160061

namespace A218132

/-- `A033582(n)*A208537(n+1)` -/
def P515712388066160061.Spec : Prop :=
  ∀ n, P515712388066160061.a n = A218132 n

end A218132

/-! ## A218132.P6729841003715184691

`A144555(n)*A208545(n+1)`
-/

namespace A218132.P6729841003715184691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n * A208545 (n + 1)

end

end A218132.P6729841003715184691

namespace A218132

/-- `A144555(n)*A208545(n+1)` -/
def P6729841003715184691.Spec : Prop :=
  ∀ n, P6729841003715184691.a n = A218132 n

end A218132

/-!
# A218133: Number of length 10 primitive (=aperiodic or period 10) n-ary words.

The programs for A218133, the canonical program `A218133.P7209591010024616570` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218133 has offset 0).

The definition of A218133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218133.P7209591010024616570

`n^10-n^5-n²+n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218133

/-- `n^10-n^5-n²+n` -/
def P7209591010024616570.Spec : Prop :=
  ∀ n, P7209591010024616570.a n = A218133 n

theorem P7209591010024616570.correct : P7209591010024616570.Spec := by
  intro n
  simp only [A218133]

end A218133

/-! ## A218133.P2238828984564155921

`A061167(n)*A271208(n)`
-/

namespace A218133.P2238828984564155921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 n * A271208 n

end

end A218133.P2238828984564155921

namespace A218133

/-- `A061167(n)*A271208(n)` -/
def P2238828984564155921.Spec : Prop :=
  ∀ n, P2238828984564155921.a n = A218133 n

end A218133

/-! ## A218133.P3794381194893730450

`(A060894(n)-1)*A002061(n)`
-/

namespace A218133.P3794381194893730450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060894 n - 1) * A002061 n

end

end A218133.P3794381194893730450

namespace A218133

/-- `(A060894(n)-1)*A002061(n)` -/
def P3794381194893730450.Spec : Prop :=
  ∀ n, P3794381194893730450.a n = A218133 n

end A218133

/-! ## A218133.P18328776486172064832

`(A131471(n)-1)*A061167(n)`
-/

namespace A218133.P18328776486172064832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131471 n - 1) * A061167 n

end

end A218133.P18328776486172064832

namespace A218133

/-- `(A131471(n)-1)*A061167(n)` -/
def P18328776486172064832.Spec : Prop :=
  ∀ n, P18328776486172064832.a n = A218133 n

end A218133

/-! ## A218133.P10485253286674713432

`(A272162(n)-1)*A271208(n)`
-/

namespace A218133.P10485253286674713432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272162 n - 1) * A271208 n

end

end A218133.P10485253286674713432

namespace A218133

/-- `(A272162(n)-1)*A271208(n)` -/
def P10485253286674713432.Spec : Prop :=
  ∀ n, P10485253286674713432.a n = A218133 n

end A218133

/-! ## A218133.P16418908452429325278

`n*(A196289(n)+A024002(n))`
-/

namespace A218133.P16418908452429325278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A196289 n + A024002 n)

end

end A218133.P16418908452429325278

namespace A218133

/-- `n*(A196289(n)+A024002(n))` -/
def P16418908452429325278.Spec : Prop :=
  ∀ n, P16418908452429325278.a n = A218133 n

end A218133

/-! ## A218133.P9686754736488038676

`(A060891(n)-n)*A091940(n+1)`
-/

namespace A218133.P9686754736488038676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060891 n - (n : ℤ)) * A091940 (n + 1)

end

end A218133.P9686754736488038676

namespace A218133

/-- `(A060891(n)-n)*A091940(n+1)` -/
def P9686754736488038676.Spec : Prop :=
  ∀ n, P9686754736488038676.a n = A218133 n

end A218133

/-! ## A218133.P17411725916341386160

`(A061167(n)+A060747(n))*A061167(n)`
-/

namespace A218133.P17411725916341386160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061167 n + A060747 n) * A061167 n

end

end A218133.P17411725916341386160

namespace A218133

/-- `(A061167(n)+A060747(n))*A061167(n)` -/
def P17411725916341386160.Spec : Prop :=
  ∀ n, P17411725916341386160.a n = A218133 n

end A218133

/-! ## A218133.P844133916303927879

`(A061167(n)-A165747(n))*A061167(n)`
-/

namespace A218133.P844133916303927879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061167 n - A165747 n) * A061167 n

end

end A218133.P844133916303927879

namespace A218133

/-- `(A061167(n)-A165747(n))*A061167(n)` -/
def P844133916303927879.Spec : Prop :=
  ∀ n, P844133916303927879.a n = A218133 n

end A218133

/-! ## A218133.P7533978632179471238

`abs(A061167(n²)-A061167(n))`
-/

namespace A218133.P7533978632179471238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061167 (n ^ 2) - A061167 n|

end

end A218133.P7533978632179471238

namespace A218133

/-- `abs(A061167(n²)-A061167(n))` -/
def P7533978632179471238.Spec : Prop :=
  ∀ n, P7533978632179471238.a n = A218133 n

end A218133

/-!
# A218134: Norm of coefficients in the expansion of 1/(1 - 2*x - i*x^2), where i is the imaginary unit.

The programs for A218134, the canonical program `A218134.P11859418528808773158` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218134 has offset 0).

The definition of A218134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218134.P11859418528808773158

`ogf((-1+x^2)/(-1+4x+2x^2+4x^3-x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218134

/-- `ogf((-1+x^2)/(-1+4x+2x^2+4x^3-x^4))` -/
def P11859418528808773158.Spec : Prop :=
  ∀ n, P11859418528808773158.a n = A218134 n

theorem P11859418528808773158.correct : P11859418528808773158.Spec := by
  intro n
  simp only [A218134]

end A218134

/-! ## A218134.P9260837032281100610

`record[Δ[A290916(A181940(n))]]`
-/

namespace A218134.P9260837032281100610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290916 (A181940 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218134.P9260837032281100610

namespace A218134

/-- `record[Δ[A290916(A181940(n))]]` -/
def P9260837032281100610.Spec : Prop :=
  ∀ n, P9260837032281100610.a n = A218134 n

end A218134

/-! ## A218134.P7705206268630481373

`A290916(n+1)-A054896(A150651(n))`
-/

namespace A218134.P7705206268630481373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290916 (n + 1) - A054896 (A150651 n).toNat

end

end A218134.P7705206268630481373

namespace A218134

/-- `A290916(n+1)-A054896(A150651(n))` -/
def P7705206268630481373.Spec : Prop :=
  ∀ n, P7705206268630481373.a n = A218134 n

end A218134

/-!
# A218135: Norm of coefficients in the expansion of 1 / (1 - x - 2*I*x^2), where I^2=-1.

The programs for A218135, there is no canonical definition to state claims against.
-/

/-! ## A218135.P13979801695767041099

`A098868(A148667(n))`
-/

namespace A218135.P13979801695767041099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098868 (A148667 n).toNat

end

end A218135.P13979801695767041099

/-! ## A218135.P16717280078100428896

`∑[A172311(A226322(n))]`
-/

namespace A218135.P16717280078100428896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (A226322 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218135.P16717280078100428896

/-!
# A218136: Norm of coefficients in the expansion of 1 / (1 - 3*x + 2*I*x^2), where I^2=-1.

The programs for A218136, there is no canonical definition to state claims against.
-/

/-! ## A218136.P14712005158767151351

`A016813(A002276(n)-A000295(n))`
-/

namespace A218136.P14712005158767151351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A002276 n - A000295 n).toNat

end

end A218136.P14712005158767151351

/-!
# A218137: Sum of absolute values of real and imaginary parts of the coefficients in the expansion of 1 / (1 - x - I*x^2), where I^2=-1.

The programs for A218137, the canonical program `A218137.P9424650878617103806` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218137 has offset 0).

The definition of A218137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218137.P9424650878617103806

`abs(A201837(n))+abs(A201838(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218137

/-- `abs(A201837(n))+abs(A201838(n))` -/
def P9424650878617103806.Spec : Prop :=
  ∀ n, P9424650878617103806.a n = A218137 n

theorem P9424650878617103806.correct : P9424650878617103806.Spec := by
  intro n
  simp only [A218137]

end A218137

/-!
# A218138: Sum of absolute values of real and imaginary parts of the coefficients in the expansion of 1 / (1 - x - 2*I*x^2), where I^2=-1.

The programs for A218138, there is no canonical definition to state claims against.
-/

/-! ## A218138.P8121180594068701276

`A069352(A148680(n)+A148657(n))`
-/

namespace A218138.P8121180594068701276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (A148680 n + A148657 n).toNat

end

end A218138.P8121180594068701276

/-!
# A218139: Central coefficients of triangle A181143.

The programs for A218139, there is no canonical definition to state claims against.
-/

/-! ## A218139.P15099025615356842455

`A181143(∑[4*n])`
-/

namespace A218139.P15099025615356842455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218139.P15099025615356842455

/-!
# A218140: Central coefficients of triangle A181144.

The programs for A218140, there is no canonical definition to state claims against.
-/

/-! ## A218140.P16690144956225292743

`A181144(∑[4*n])`
-/

namespace A218140.P16690144956225292743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218140.P16690144956225292743

/-!
# A218141: a(n) = Stirling2(n^2, n).

The programs for A218141, there is no canonical definition to state claims against.
-/

/-! ## A218141.P17844686589688340586

`A048993(A037270(n)+n)`
-/

namespace A218141.P17844686589688340586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A037270 n + (n : ℤ)).toNat

end

end A218141.P17844686589688340586

/-! ## A218141.P14278859744630234394

`A048993(A000217(n²)+n)`
-/

namespace A218141.P14278859744630234394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A000217 (n ^ 2) + (n : ℤ)).toNat

end

end A218141.P14278859744630234394

/-!
# A218142: a(n) = Stirling2(n^2+n, n).

The programs for A218142, there is no canonical definition to state claims against.
-/

/-! ## A218142.P16649082257264582258

`A048993(A110450(n)+n)`
-/

namespace A218142.P16649082257264582258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A110450 n + (n : ℤ)).toNat

end

end A218142.P16649082257264582258

/-! ## A218142.P6479748234005329032

`A106800(eq[A025581(n)², A144328(n+1)])`
-/

namespace A218142.P6479748234005329032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A218142.P6479748234005329032

/-!
# A218143: a(n) = Stirling2(n*(n+1)/2, n).

The programs for A218143, there is no canonical definition to state claims against.
-/

/-! ## A218143.P1022674315432543302

`A048993(C(∑[n]+1, 2)+n)`
-/

namespace A218143.P1022674315432543302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 + n)

end

end A218143.P1022674315432543302

/-! ## A218143.P15945831362090122994

`A048993(A002817(n)+n)`
-/

namespace A218143.P15945831362090122994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A002817 n + (n : ℤ)).toNat

end

end A218143.P15945831362090122994

/-! ## A218143.P7200314996538064448

`A048993(A000217(∑[n])+n)`
-/

namespace A218143.P7200314996538064448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A218143.P7200314996538064448

/-! ## A218143.P13318983983964312189

`A048993(A004255(n+1)-1)`
-/

namespace A218143.P13318983983964312189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A004255 (n + 1) - 1).toNat

end

end A218143.P13318983983964312189

/-! ## A218143.P6142316071877218438

`A008277(A179865(n+1)+A086602(n))`
-/

namespace A218143.P6142316071877218438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A179865 (n + 1) + A086602 n).toNat

end

end A218143.P6142316071877218438

/-!
# A218144: Number of inequivalent graphs on n nodes where two graphs are equivalent if adjacency is preserved under the action of the alternating group.

The programs for A218144, there is no canonical definition to state claims against.
-/

/-! ## A218144.P14517678348200188062

`A327083(∑[1-char[1]+n])`
-/

namespace A218144.P14517678348200188062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218144.P14517678348200188062

/-! ## A218144.P6040087063729493620

`record[ratio[A327083(A038722(n+1))]]`
-/

namespace A218144.P6040087063729493620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (A038722 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218144.P6040087063729493620

/-! ## A218144.P631468222698595311

`record[A327083(record[A316669(n+1)])]`
-/

namespace A218144.P631468222698595311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218144.P631468222698595311

/-! ## A218144.P16023693221864553063

`record[gcd(A212551(n), A327083(n+1))]`
-/

namespace A218144.P16023693221864553063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212551 n) (A327083 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218144.P16023693221864553063

/-! ## A218144.P11631362460439226920

`record[root(A327083(n+1), A327083(n+2))]`
-/

namespace A218144.P11631362460439226920
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A327083 (n + 1) : ℝ) ^ (1 / (A327083 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218144.P11631362460439226920

/-!
# A218145: Product of the nonzero digits (in base 10) of n^3.

The programs for A218145, the canonical program `A218145.P8331965764297843249` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218145 has offset 1).

The definition of A218145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218145.P8331965764297843249

`∏{digits}[(n+1)^3, gcd(#, #!²)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218145

/-- `∏{digits}[(n+1)^3, gcd(#, #!²)]` -/
def P8331965764297843249.Spec : Prop :=
  ∀ n, (P8331965764297843249.a n : ℤ) = A218145 (n + 1)

theorem P8331965764297843249.correct : P8331965764297843249.Spec := by
  intro n
  simp only [A218145, Nat.add_sub_cancel]

end A218145

/-! ## A218145.P15114096813481532808

`∏{digits}[(n+1)^3, floor(acot(#)+#)]`
-/

namespace A218145.P15114096813481532808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ) + (x : ℝ)⌋).prod

end

end A218145.P15114096813481532808

namespace A218145

/-- `∏{digits}[(n+1)^3, floor(acot(#)+#)]` -/
def P15114096813481532808.Spec : Prop :=
  ∀ n, P15114096813481532808.a n = A218145 (n + 1)

end A218145

/-! ## A218145.P12234677039640056896

`∏{digits}[(n+1)^3, #^floor(atan(#))]`
-/

namespace A218145.P12234677039640056896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (⌊Real.arctan (x : ℝ)⌋ : ℤ)).prod

end

end A218145.P12234677039640056896

namespace A218145

/-- `∏{digits}[(n+1)^3, #^floor(atan(#))]` -/
def P12234677039640056896.Spec : Prop :=
  ∀ n, P12234677039640056896.a n = (A218145 (n + 1) : ℚ)

end A218145

/-! ## A218145.P1396988796961955696

`∏{digits}[(n+1)^3, A028310(#)]`
-/

namespace A218145.P1396988796961955696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A028310 x).prod

end

end A218145.P1396988796961955696

namespace A218145

/-- `∏{digits}[(n+1)^3, A028310(#)]` -/
def P1396988796961955696.Spec : Prop :=
  ∀ n, P1396988796961955696.a n = A218145 (n + 1)

end A218145

/-! ## A218145.P15132526327827998786

`∏{digits}[(n+1)^3, A015161(#)+#]`
-/

namespace A218145.P15132526327827998786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015161 x + (x : ℤ)).prod

end

end A218145.P15132526327827998786

namespace A218145

/-- `∏{digits}[(n+1)^3, A015161(#)+#]` -/
def P15132526327827998786.Spec : Prop :=
  ∀ n, P15132526327827998786.a n = A218145 (n + 1)

end A218145

/-! ## A218145.P12888630731140157159

`∏{digits}[(n+1)^3, gcd(#, A006882(#))]`
-/

namespace A218145.P12888630731140157159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.gcd (x : ℤ) (A006882 x)).prod

end

end A218145.P12888630731140157159

namespace A218145

/-- `∏{digits}[(n+1)^3, gcd(#, A006882(#))]` -/
def P12888630731140157159.Spec : Prop :=
  ∀ n, (P12888630731140157159.a n : ℤ) = A218145 (n + 1)

end A218145

/-! ## A218145.P428963503472961725

`∏{digits}[A032553(n+1), #]`
-/

namespace A218145.P428963503472961725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A218145.P428963503472961725

namespace A218145

/-- `∏{digits}[A032553(n+1), #]` -/
def P428963503472961725.Spec : Prop :=
  ∀ n, (P428963503472961725.a n : ℤ) = A218145 (n + 1)

end A218145

/-!
# A218146: The number of centered circles that can form hexagonal symmetry. Contains all hexagonal numbers.

The programs for A218146, there is no canonical definition to state claims against.
-/

/-! ## A218146.P12235912541340107550

`∩[A038590(n), A101771(n)]`
-/

namespace A218146.P12235912541340107550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218146.P12235912541340107550

/-! ## A218146.P17850420468806493963

`∩[A230999(n+1), A038590(n)]`
-/

namespace A218146.P17850420468806493963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218146.P17850420468806493963

/-! ## A218146.P693868717525851073

`∩[A016921(A038161(n)), A101771(n)]`
-/

namespace A218146.P693868717525851073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A038161 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218146.P693868717525851073

/-! ## A218146.P2713692858352661454

`∩[A038589(A003136(n+1)), A101771(n)]`
-/

namespace A218146.P2713692858352661454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 (A003136 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218146.P2713692858352661454

/-! ## A218146.P14986537784723190198

`∩[A230999(n+1), A016921(A038161(n))]`
-/

namespace A218146.P14986537784723190198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A038161 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218146.P14986537784723190198

/-!
# A218147: Degree of minimal polynomial satisfied by exp(8*Pi*phi_2(1/n,1/n)), where phi_2 is defined in the Comments.

The programs for A218147, the canonical program `A218147.P2989802918495991465` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218147 has offset 3).

The definition of A218147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218147.P2989802918495991465

`A079458(n+3)/4`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A218147

/-- `A079458(n+3)/4` -/
def P2989802918495991465.Spec : Prop :=
  ∀ n, P2989802918495991465.a n = (A218147 (n + 3) : ℚ)

end A218147

/-! ## A218147.P9987507060212595618

`A174571(A079458(n+3))`
-/

namespace A218147.P9987507060212595618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A079458 (n + 3)).toNat

end

end A218147.P9987507060212595618

namespace A218147

/-- `A174571(A079458(n+3))` -/
def P9987507060212595618.Spec : Prop :=
  ∀ n, P9987507060212595618.a n = A218147 (n + 3)

end A218147

/-! ## A218147.P17239523682125320338

`A008621(A079458(n+3)-1)`
-/

namespace A218147.P17239523682125320338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A079458 (n + 3) - 1).toNat

end

end A218147.P17239523682125320338

namespace A218147

/-- `A008621(A079458(n+3)-1)` -/
def P17239523682125320338.Spec : Prop :=
  ∀ n, P17239523682125320338.a n = A218147 (n + 3)

end A218147

/-! ## A218147.P12615965183138889568

`A008624(A079458(n+3)-1)`
-/

namespace A218147.P12615965183138889568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A079458 (n + 3) - 1).toNat

end

end A218147.P12615965183138889568

namespace A218147

/-- `A008624(A079458(n+3)-1)` -/
def P12615965183138889568.Spec : Prop :=
  ∀ n, P12615965183138889568.a n = A218147 (n + 3)

end A218147

/-! ## A218147.P13311360082803332680

`A077814(A079458(n+3)-1)`
-/

namespace A218147.P13311360082803332680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A079458 (n + 3) - 1).toNat

end

end A218147.P13311360082803332680

namespace A218147

/-- `A077814(A079458(n+3)-1)` -/
def P13311360082803332680.Spec : Prop :=
  ∀ n, P13311360082803332680.a n = A218147 (n + 3)

end A218147

/-! ## A218147.P3714328333385598399

`A003602(A079458(n+3)-2)`
-/

namespace A218147.P3714328333385598399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A079458 (n + 3) - 2).toNat

end

end A218147.P3714328333385598399

namespace A218147

/-- `A003602(A079458(n+3)-2)` -/
def P3714328333385598399.Spec : Prop :=
  ∀ n, P3714328333385598399.a n = A218147 (n + 3)

end A218147

/-! ## A218147.P11439353671658349669

`A002265(A079458(n+3)+1)`
-/

namespace A218147.P11439353671658349669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A079458 (n + 3) + 1).toNat

end

end A218147.P11439353671658349669

namespace A218147

/-- `A002265(A079458(n+3)+1)` -/
def P11439353671658349669.Spec : Prop :=
  ∀ n, P11439353671658349669.a n = A218147 (n + 3)

end A218147

/-! ## A218147.P12603854007388925781

`A025480(A079458(n+3)+1)`
-/

namespace A218147.P12603854007388925781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A079458 (n + 3) + 1).toNat

end

end A218147.P12603854007388925781

namespace A218147

/-- `A025480(A079458(n+3)+1)` -/
def P12603854007388925781.Spec : Prop :=
  ∀ n, P12603854007388925781.a n = A218147 (n + 3)

end A218147

/-!
# A218148: a(n) = 2^((6+5*n+n^3)/6).

The programs for A218148, there is no canonical definition to state claims against.
-/

/-! ## A218148.P5481346317871849600

`2^((6+5*(n-1)+(n-1)^3)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218148.P5481346317871849600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((6 + 5 * ((n : ℤ) - 1) + ((n : ℤ) - 1) ^ 3 : ℚ) / 6 : ℝ)

end

end A218148.P5481346317871849600

/-! ## A218148.P17553534387586564262

`∏[∏[2*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A218148.P17553534387586564262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218148.P17553534387586564262

/-! ## A218148.P11639254368101964961

`A000079(C(n, 3)+n)`
-/

namespace A218148.P11639254368101964961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.choose n 3 + n)

end

end A218148.P11639254368101964961

/-! ## A218148.P17849142077040362751

`record[2^Δ[A263614(n)]]`
-/

namespace A218148.P17849142077040362751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218148.P17849142077040362751

/-! ## A218148.P12103688962275192517

`A016116(A046127(n))`
-/

namespace A218148.P12103688962275192517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A046127 n).toNat

end

end A218148.P12103688962275192517

/-!
# A218149: a(n) = 3^((6+5*n+n^3)/6).

The programs for A218149, there is no canonical definition to state claims against.
-/

/-! ## A218149.P10516038770840539801

`3^((n-1)*(5+(n-1)²)/6+1)`
-/

namespace A218149.P10516038770840539801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((((n : ℤ) - 1) * (5 + ((n : ℤ) - 1) ^ 2) : ℚ) / 6 + 1 : ℝ)

end

end A218149.P10516038770840539801

/-! ## A218149.P2259176097376226882

`3^((6+5*(n-1)+(n-1)^3)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218149.P2259176097376226882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((6 + 5 * ((n : ℤ) - 1) + ((n : ℤ) - 1) ^ 3 : ℚ) / 6 : ℝ)

end

end A218149.P2259176097376226882

/-! ## A218149.P10855455245698409572

`∏[∏[3*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A218149.P10855455245698409572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218149.P10855455245698409572

/-! ## A218149.P2620088799625843095

`A000244(C(n, 3)+n)`
-/

namespace A218149.P2620088799625843095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (Nat.choose n 3 + n)

end

end A218149.P2620088799625843095

/-! ## A218149.P16698832748722670433

`record[3^Δ[A263614(n)]]`
-/

namespace A218149.P16698832748722670433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218149.P16698832748722670433

/-!
# A218150: a(n) = 5^((6+5*n+n^3)/6).

The programs for A218150, there is no canonical definition to state claims against.
-/

/-! ## A218150.P18106411947271336259

`5^((n-1)*((n-1)²+5)/6+1)`
-/

namespace A218150.P18106411947271336259
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ ((((n : ℤ) - 1) * (((n : ℤ) - 1) ^ 2 + 5) : ℚ) / 6 + 1 : ℝ)

end

end A218150.P18106411947271336259

/-! ## A218150.P37524151098662438

`5^((6+5*(n-1)+(n-1)^3)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218150.P37524151098662438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ ((6 + 5 * ((n : ℤ) - 1) + ((n : ℤ) - 1) ^ 3 : ℚ) / 6 : ℝ)

end

end A218150.P37524151098662438

/-! ## A218150.P5851748664600124407

`∏[∏[5*a(n-1)]]` with `a(0)=1, a(1)=5, a(2)=1`
-/

namespace A218150.P5851748664600124407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 1] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218150.P5851748664600124407

/-! ## A218150.P17666946479923913846

`A017919(A046127(n))`
-/

namespace A218150.P17666946479923913846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 (A046127 n).toNat

end

end A218150.P17666946479923913846

/-!
# A218151: a(n) = 2*3^n*5^(n*(n-1)/2).

The programs for A218151, the canonical program `A218151.P9942936165799504571` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218151 has offset 0).

The definition of A218151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218151.P9942936165799504571

`a(n-1)*3*5^(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218151

/-- `a(n-1)*3*5^(n-1)` -/
def P9942936165799504571.Spec : Prop :=
  ∀ n, P9942936165799504571.a n = (A218151 n : ℚ)

end A218151

/-! ## A218151.P6470726224405316505

`2*3^n*5^(n*(n-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218151.P6470726224405316505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n : ℝ) * (5 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ)

end

end A218151.P6470726224405316505

namespace A218151

/-- `2*3^n*5^(n*(n-1)/2)` -/
def P6470726224405316505.Spec : Prop :=
  ∀ n, P6470726224405316505.a n = (A218151 n : ℝ)

end A218151

/-! ## A218151.P16464979193917569775

`∏[5*a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A218151.P16464979193917569775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218151.P16464979193917569775

namespace A218151

/-- `∏[5*a(n-1)]` -/
def P16464979193917569775.Spec : Prop :=
  ∀ n, (P16464979193917569775.a n : ℤ) = A218151 n

end A218151

/-! ## A218151.P13653237880581955111

`∏[a(n-1)/(1-4/5)]` with `a(0)=2, a(1)=3`
-/

namespace A218151.P13653237880581955111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) / (1 - (4 : ℚ) / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A218151.P13653237880581955111

namespace A218151

/-- `∏[a(n-1)/(1-4/5)]` -/
def P13653237880581955111.Spec : Prop :=
  ∀ n, P13653237880581955111.a n = (A218151 n : ℚ)

end A218151

/-!
# A218152: a(n) = 1 + n + ((n-1)*n^2)/2.

The programs for A218152, the canonical program `A218152.P17199265241831325520` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218152 has offset 0).

The definition of A218152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218152.P17199265241831325520

`1+n+(n-1)*n²/2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218152

/-- `1+n+(n-1)*n²/2` -/
def P17199265241831325520.Spec : Prop :=
  ∀ n, P17199265241831325520.a n = (A218152 n : ℚ)

end A218152

/-! ## A218152.P16906194287501984906

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A218152.P16906194287501984906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P16906194287501984906

namespace A218152

/-- `∑[∑[a(n-1)+3]]` -/
def P16906194287501984906.Spec : Prop :=
  ∀ n, (P16906194287501984906.a n : ℤ) = A218152 n

end A218152

/-! ## A218152.P5507667399062590436

`∑[abs(∑[a(n-1)-3])]` with `a(0)=1, a(1)=-2, a(2)=-2`
-/

namespace A218152.P5507667399062590436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P5507667399062590436

namespace A218152

/-- `∑[abs(∑[a(n-1)-3])]` -/
def P5507667399062590436.Spec : Prop :=
  ∀ n, P5507667399062590436.a n = A218152 n

end A218152

/-! ## A218152.P8866949841480485986

`∑[3*n-(4-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A218152.P8866949841480485986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (3 * n : ℤ) - (4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P8866949841480485986

namespace A218152

/-- `∑[3*n-(4-a(n-1))]` -/
def P8866949841480485986.Spec : Prop :=
  ∀ n, P8866949841480485986.a n = A218152 n

end A218152

/-! ## A218152.P5064827289489677678

`(C(n², 2)+(n+1)²)/(n+1)`
-/

namespace A218152.P5064827289489677678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 + (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A218152.P5064827289489677678

namespace A218152

/-- `(C(n², 2)+(n+1)²)/(n+1)` -/
def P5064827289489677678.Spec : Prop :=
  ∀ n, P5064827289489677678.a n = (A218152 n : ℚ)

end A218152

/-! ## A218152.P8989280520809368172

`floor(lcm(n-1, n²)/2+n+1)`
-/

namespace A218152.P8989280520809368172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℚ) / 2 + (n + 1 : ℚ)⌋

end

end A218152.P8989280520809368172

namespace A218152

/-- `floor(lcm(n-1, n²)/2+n+1)` -/
def P8989280520809368172.Spec : Prop :=
  ∀ n, P8989280520809368172.a n = A218152 n

end A218152

/-! ## A218152.P6723156726593801214

`∑[1-∑[a(n-1)-3]]` with `a(0)=0, a(1)=0, a(2)=-2`
-/

namespace A218152.P6723156726593801214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P6723156726593801214

namespace A218152

/-- `∑[1-∑[a(n-1)-3]]` -/
def P6723156726593801214.Spec : Prop :=
  ∀ n, P6723156726593801214.a n = A218152 n

end A218152

/-! ## A218152.P14573797781726616028

`∑[(n²+1)*ceil(atan(n+1))-(∑[n+2]-2)]`
-/

namespace A218152.P14573797781726616028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉ - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P14573797781726616028

namespace A218152

/-- `∑[(n²+1)*ceil(atan(n+1))-(∑[n+2]-2)]` -/
def P14573797781726616028.Spec : Prop :=
  ∀ n, P14573797781726616028.a n = A218152 n

end A218152

/-! ## A218152.P10925654226415761865

`abs(n²-A064808(n))`
-/

namespace A218152.P10925654226415761865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A064808 n|

end

end A218152.P10925654226415761865

namespace A218152

/-- `abs(n²-A064808(n))` -/
def P10925654226415761865.Spec : Prop :=
  ∀ n, P10925654226415761865.a n = A218152 n

end A218152

/-! ## A218152.P11544579072424449386

`∑[A139482(n+1)-n]`
-/

namespace A218152.P11544579072424449386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P11544579072424449386

namespace A218152

/-- `∑[A139482(n+1)-n]` -/
def P11544579072424449386.Spec : Prop :=
  ∀ n, P11544579072424449386.a n = A218152 n

end A218152

/-! ## A218152.P70203074544875244

`(A062158(n)+3+n)/2`
-/

namespace A218152.P70203074544875244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062158 n + 3 + (n : ℤ) : ℚ) / 2

end

end A218152.P70203074544875244

namespace A218152

/-- `(A062158(n)+3+n)/2` -/
def P70203074544875244.Spec : Prop :=
  ∀ n, P70203074544875244.a n = (A218152 n : ℚ)

end A218152

/-! ## A218152.P18212641296717202300

`∑[∑[abs(2-A033627(n+1))]]`
-/

namespace A218152.P18212641296717202300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A033627 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P18212641296717202300

namespace A218152

/-- `∑[∑[abs(2-A033627(n+1))]]` -/
def P18212641296717202300.Spec : Prop :=
  ∀ n, P18212641296717202300.a n = A218152 n

end A218152

/-! ## A218152.P1851254190218398996

`round(∑[(A056105(n)+1+n)/2]-n²)`
-/

namespace A218152.P1851254190218398996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056105 n + 1 + (n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℚ))

end

end A218152.P1851254190218398996

namespace A218152

/-- `round(∑[(A056105(n)+1+n)/2]-n²)` -/
def P1851254190218398996.Spec : Prop :=
  ∀ n, P1851254190218398996.a n = A218152 n

end A218152

/-! ## A218152.P8053189929382505183

`(A100104(n)+A005408(n))/2`
-/

namespace A218152.P8053189929382505183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100104 n + A005408 n : ℚ) / 2

end

end A218152.P8053189929382505183

namespace A218152

/-- `(A100104(n)+A005408(n))/2` -/
def P8053189929382505183.Spec : Prop :=
  ∀ n, P8053189929382505183.a n = (A218152 n : ℚ)

end A218152

/-! ## A218152.P4856286178993849692

`A072025(n)%A173965(n+1)`
-/

namespace A218152.P4856286178993849692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072025 n) (A173965 (n + 1))

end

end A218152.P4856286178993849692

namespace A218152

/-- `A072025(n)%A173965(n+1)` -/
def P4856286178993849692.Spec : Prop :=
  ∀ n, P4856286178993849692.a n = A218152 n

end A218152

/-! ## A218152.P14654915819776828220

`∑[A002061(n)+∑[A289207(n)]]`
-/

namespace A218152.P14654915819776828220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218152.P14654915819776828220

namespace A218152

/-- `∑[A002061(n)+∑[A289207(n)]]` -/
def P14654915819776828220.Spec : Prop :=
  ∀ n, P14654915819776828220.a n = A218152 n

end A218152

/-! ## A218152.P4433403335982537563

`round((2*n*A000217(abs(1-n))+A004277(n)+1)/2)`
-/

namespace A218152.P4433403335982537563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * ((n : ℤ) * A000217 |1 - (n : ℤ)|.toNat) + (A004277 n + 1) : ℚ) / 2)

end

end A218152.P4433403335982537563

namespace A218152

/-- `round((2*n*A000217(abs(1-n))+A004277(n)+1)/2)` -/
def P4433403335982537563.Spec : Prop :=
  ∀ n, P4433403335982537563.a n = A218152 n

end A218152

/-! ## A218152.P5069951056523418547

`(A091940(n+1)+A002378(n+1))/A005843(n+1)`
-/

namespace A218152.P5069951056523418547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091940 (n + 1) + A002378 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A218152.P5069951056523418547

namespace A218152

/-- `(A091940(n+1)+A002378(n+1))/A005843(n+1)` -/
def P5069951056523418547.Spec : Prop :=
  ∀ n, P5069951056523418547.a n = (A218152 n : ℚ)

end A218152

/-! ## A218152.P18124615252678570837

`record[n*A348888(n+1)+1]`
-/

namespace A218152.P18124615252678570837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A348888 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218152.P18124615252678570837

namespace A218152

/-- `record[n*A348888(n+1)+1]` -/
def P18124615252678570837.Spec : Prop :=
  ∀ n, P18124615252678570837.a n = A218152 n

end A218152

/-!
# A218153: G.f.: A(x) = exp( Sum_{n>=1} x^n/n * Product_{k>=1} (1 + x^(n*k)) ).

The programs for A218153, there is no canonical definition to state claims against.
-/

/-! ## A218153.P6933793624142901078

`A319642(n)-A018794(n)`
-/

namespace A218153.P6933793624142901078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A018794 n

end

end A218153.P6933793624142901078

/-! ## A218153.P8205936660413950893

`A319642(n)-A225005(n+1)`
-/

namespace A218153.P8205936660413950893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A225005 (n + 1)

end

end A218153.P8205936660413950893

/-! ## A218153.P13209102416329320078

`A319642(n)-A107846(n²²)`
-/

namespace A218153.P13209102416329320078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A107846 ((n ^ 2) ^ 2)

end

end A218153.P13209102416329320078

/-! ## A218153.P3061268770829271741

`A319642(n)-A003056(A036633(n))`
-/

namespace A218153.P3061268770829271741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A003056 (A036633 n).toNat

end

end A218153.P3061268770829271741

/-! ## A218153.P4258237933535594261

`A319642(n)-A130520(A130520(n))`
-/

namespace A218153.P4258237933535594261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n - A130520 (A130520 n).toNat

end

end A218153.P4258237933535594261

/-!
# A218155: Numbers congruent to 2, 3, 6, 11 mod 12.

The programs for A218155, the canonical program `A218155.P8459060637168522418` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218155 has offset 1).

The definition of A218155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218155.P8459060637168522418

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218155

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P8459060637168522418.Spec : Prop :=
  ∀ n, P8459060637168522418.a n = A218155 (n + 1)

theorem P8459060637168522418.correct : P8459060637168522418.Spec := by
  intro n
  simp only [A218155, Nat.add_sub_cancel]

end A218155

/-! ## A218155.P15742051632335123262

`or(2, 3*n)`
-/

namespace A218155.P15742051632335123262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * n)

end

end A218155.P15742051632335123262

namespace A218155

/-- `or(2, 3*n)` -/
def P15742051632335123262.Spec : Prop :=
  ∀ n, (P15742051632335123262.a n : ℤ) = A218155 (n + 1)

end A218155

/-! ## A218155.P7185662306940633665

`and(3*n, -3)+2`
-/

namespace A218155.P7185662306940633665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-3) + 2

end

end A218155.P7185662306940633665

namespace A218155

/-- `and(3*n, -3)+2` -/
def P7185662306940633665.Spec : Prop :=
  ∀ n, P7185662306940633665.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P18306223576975295636

`xor(2, and(3*n, -3))`
-/

namespace A218155.P18306223576975295636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.land (3 * n : ℤ) (-3))

end

end A218155.P18306223576975295636

namespace A218155

/-- `xor(2, and(3*n, -3))` -/
def P18306223576975295636.Spec : Prop :=
  ∀ n, P18306223576975295636.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P13439266559718860648

`∑[Δ[or(2, n)]+2]-1`
-/

namespace A218155.P13439266559718860648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218155.P13439266559718860648

namespace A218155

/-- `∑[Δ[or(2, n)]+2]-1` -/
def P13439266559718860648.Spec : Prop :=
  ∀ n, P13439266559718860648.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P11897847303717667528

`a(n-4)+12` with `a(0)=2, a(1)=3, a(2)=6, a(3)=11`
-/

namespace A218155.P11897847303717667528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 11] fun n a =>
  a (n - 4) + 12

end

end A218155.P11897847303717667528

namespace A218155

/-- `a(n-4)+12` -/
def P11897847303717667528.Spec : Prop :=
  ∀ n, (P11897847303717667528.a n : ℤ) = A218155 (n + 1)

end A218155

/-! ## A218155.P15690307721645177573

`∑[6-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A218155.P15690307721645177573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218155.P15690307721645177573

namespace A218155

/-- `∑[6-a(n-2)]` -/
def P15690307721645177573.Spec : Prop :=
  ∀ n, P15690307721645177573.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P7372888669541507181

`n-or(2, -(n+2))+n`
-/

namespace A218155.P7372888669541507181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 2 (-(n + 2 : ℤ)) + (n : ℤ)

end

end A218155.P7372888669541507181

namespace A218155

/-- `n-or(2, -(n+2))+n` -/
def P7372888669541507181.Spec : Prop :=
  ∀ n, P7372888669541507181.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P1881631558930249984

`Δ[n²]+and(n+1, -3)`
-/

namespace A218155.P1881631558930249984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.land (n + 1 : ℤ) (-3)

end

end A218155.P1881631558930249984

namespace A218155

/-- `Δ[n²]+and(n+1, -3)` -/
def P1881631558930249984.Spec : Prop :=
  ∀ n, P1881631558930249984.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P1266427322200657943

`3*n+(-1)^∑[n]+1`
-/

namespace A218155.P1266427322200657943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A218155.P1266427322200657943

namespace A218155

/-- `3*n+(-1)^∑[n]+1` -/
def P1266427322200657943.Spec : Prop :=
  ∀ n, P1266427322200657943.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P138789812794647130

`ogf((2-x+4x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A218155.P138789812794647130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 4, 1] [1, -2, 2, -2, 1] n

end

end A218155.P138789812794647130

namespace A218155

/-- `ogf((2-x+4x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P138789812794647130.Spec : Prop :=
  ∀ n, P138789812794647130.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P7241669619610848688

`∑[3-A084099(n)]`
-/

namespace A218155.P7241669619610848688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A084099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218155.P7241669619610848688

namespace A218155

/-- `∑[3-A084099(n)]` -/
def P7241669619610848688.Spec : Prop :=
  ∀ n, P7241669619610848688.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P10998368631802120569

`A017257(n)%A013574(n+1)`
-/

namespace A218155.P10998368631802120569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017257 n) (A013574 (n + 1))

end

end A218155.P10998368631802120569

namespace A218155

/-- `A017257(n)%A013574(n+1)` -/
def P10998368631802120569.Spec : Prop :=
  ∀ n, P10998368631802120569.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P16170403784255564190

`xor(A000035(n), A080460(n+1))`
-/

namespace A218155.P16170403784255564190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A080460 (n + 1))

end

end A218155.P16170403784255564190

namespace A218155

/-- `xor(A000035(n), A080460(n+1))` -/
def P16170403784255564190.Spec : Prop :=
  ∀ n, P16170403784255564190.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P7094436979163563390

`Δ[A000326(n)-Δ[A098180(n)]]`
-/

namespace A218155.P7094436979163563390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218155.P7094436979163563390

namespace A218155

/-- `Δ[A000326(n)-Δ[A098180(n)]]` -/
def P7094436979163563390.Spec : Prop :=
  ∀ n, P7094436979163563390.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P7745542160354996387

`A004443(A112652(n))`
-/

namespace A218155.P7745542160354996387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A112652 n).toNat

end

end A218155.P7745542160354996387

namespace A218155

/-- `A004443(A112652(n))` -/
def P7745542160354996387.Spec : Prop :=
  ∀ n, P7745542160354996387.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P10442795704684059295

`A042964(A047246(n+2))`
-/

namespace A218155.P10442795704684059295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A047246 (n + 2)).toNat

end

end A218155.P10442795704684059295

namespace A218155

/-- `A042964(A047246(n+2))` -/
def P10442795704684059295.Spec : Prop :=
  ∀ n, P10442795704684059295.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P9296086731701685967

`record[or(2, A195013(n+1))]`
-/

namespace A218155.P9296086731701685967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A195013 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218155.P9296086731701685967

namespace A218155

/-- `record[or(2, A195013(n+1))]` -/
def P9296086731701685967.Spec : Prop :=
  ∀ n, P9296086731701685967.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P916237242632293339

`record[or(2, A071045(n))]`
-/

namespace A218155.P916237242632293339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A071045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218155.P916237242632293339

namespace A218155

/-- `record[or(2, A071045(n))]` -/
def P916237242632293339.Spec : Prop :=
  ∀ n, P916237242632293339.a n = A218155 (n + 1)

end A218155

/-! ## A218155.P10910278587653066137

`A007494(A047541(n+1))`
-/

namespace A218155.P10910278587653066137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A047541 (n + 1)).toNat

end

end A218155.P10910278587653066137

namespace A218155

/-- `A007494(A047541(n+1))` -/
def P10910278587653066137.Spec : Prop :=
  ∀ n, P10910278587653066137.a n = A218155 (n + 1)

end A218155

/-!
# A218168: G.f. satisfies: A(x) = 1 + x*[d/dx x*A(x)^3]/A(x)^4.

The programs for A218168, there is no canonical definition to state claims against.
-/

/-! ## A218168.P8531432105942150295

`A191890(A001006(n))+A151879(n)`
-/

namespace A218168.P8531432105942150295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191890 (A001006 n).toNat + A151879 n

end

end A218168.P8531432105942150295

/-! ## A218168.P13100275766046801258

`A191799(n)-A090620(A191799(n))`
-/

namespace A218168.P13100275766046801258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191799 n - A090620 (A191799 n).toNat

end

end A218168.P13100275766046801258

/-!
# A218171: Expansion of f(x^11, x^13) - x * f(x^5, x^19) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A218171, the canonical program `A218171.P11355719928321184254` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218171 has offset 0).

The definition of A218171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218171.P11355719928321184254

`A010815(2*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218171

/-- `A010815(2*n)` -/
def P11355719928321184254.Spec : Prop :=
  ∀ n, P11355719928321184254.a n = A218171 n

theorem P11355719928321184254.correct : P11355719928321184254.Spec := by
  intro n
  simp only [A218171]

end A218171

/-! ## A218171.P1738880378882645644

`A274719(4*n)`
-/

namespace A218171.P1738880378882645644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (4 * n)

end

end A218171.P1738880378882645644

namespace A218171

/-- `A274719(4*n)` -/
def P1738880378882645644.Spec : Prop :=
  ∀ n, P1738880378882645644.a n = A218171 n

end A218171

/-! ## A218171.P14026292444350292651

`A121373(2*n)`
-/

namespace A218171.P14026292444350292651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (2 * n)

end

end A218171.P14026292444350292651

namespace A218171

/-- `A121373(2*n)` -/
def P14026292444350292651.Spec : Prop :=
  ∀ n, P14026292444350292651.a n = A218171 n

end A218171

/-! ## A218171.P8523876737481927405

`floor(acot(n)-A257628(2*n))`
-/

namespace A218171.P8523876737481927405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A257628 (2 * n) : ℝ)⌋

end

end A218171.P8523876737481927405

namespace A218171

/-- `floor(acot(n)-A257628(2*n))` -/
def P8523876737481927405.Spec : Prop :=
  ∀ n, P8523876737481927405.a n = A218171 n

end A218171

/-! ## A218171.P2247374944657701931

`A121373(gcd(n, C(2, n))+n)/(val(n+1, 5)+1)`
-/

namespace A218171.P2247374944657701931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (Nat.gcd n (Nat.choose 2 n) + n) : ℚ) / (SequenceMachineLib.valuation (n + 1) 5 + 1 : ℚ)

end

end A218171.P2247374944657701931

namespace A218171

/-- `A121373(gcd(n, C(2, n))+n)/(val(n+1, 5)+1)` -/
def P2247374944657701931.Spec : Prop :=
  ∀ n, P2247374944657701931.a n = (A218171 n : ℚ)

end A218171

/-! ## A218171.P748979412874849378

`A010815(A005843(n))^3`
-/

namespace A218171.P748979412874849378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005843 n).toNat ^ 3

end

end A218171.P748979412874849378

namespace A218171

/-- `A010815(A005843(n))^3` -/
def P748979412874849378.Spec : Prop :=
  ∀ n, P748979412874849378.a n = A218171 n

end A218171

/-! ## A218171.P1193432595227659248

`A121373(A004277(n))^3`
-/

namespace A218171.P1193432595227659248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A004277 n).toNat ^ 3

end

end A218171.P1193432595227659248

namespace A218171

/-- `A121373(A004277(n))^3` -/
def P1193432595227659248.Spec : Prop :=
  ∀ n, P1193432595227659248.a n = A218171 n

end A218171

/-! ## A218171.P10213834849007857648

`A000007(n)-A257628(2*n)`
-/

namespace A218171.P10213834849007857648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A257628 (2 * n)

end

end A218171.P10213834849007857648

namespace A218171

/-- `A000007(n)-A257628(2*n)` -/
def P10213834849007857648.Spec : Prop :=
  ∀ n, P10213834849007857648.a n = A218171 n

end A218171

/-! ## A218171.P16669290475086361319

`A134756(2*n)%2`
-/

namespace A218171.P16669290475086361319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134756 (2 * n)) 2

end

end A218171.P16669290475086361319

namespace A218171

/-- `A134756(2*n)%2` -/
def P16669290475086361319.Spec : Prop :=
  ∀ n, P16669290475086361319.a n = A218171 n

end A218171

/-! ## A218171.P10084013745721366260

`A143278(2*n)%2`
-/

namespace A218171.P10084013745721366260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143278 (2 * n)) 2

end

end A218171.P10084013745721366260

namespace A218171

/-- `A143278(2*n)%2` -/
def P10084013745721366260.Spec : Prop :=
  ∀ n, P10084013745721366260.a n = A218171 n

end A218171

/-! ## A218171.P7883289238801257590

`A286956(2*n)-2*n`
-/

namespace A218171.P7883289238801257590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 (2 * n) - (2 * n : ℤ)

end

end A218171.P7883289238801257590

namespace A218171

/-- `A286956(2*n)-2*n` -/
def P7883289238801257590.Spec : Prop :=
  ∀ n, P7883289238801257590.a n = A218171 n

end A218171

/-! ## A218171.P784136824802423252

`A007706(2*n)-1`
-/

namespace A218171.P784136824802423252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (2 * n) - 1

end

end A218171.P784136824802423252

namespace A218171

/-- `A007706(2*n)-1` -/
def P784136824802423252.Spec : Prop :=
  ∀ n, P784136824802423252.a n = A218171 n

end A218171

/-! ## A218171.P14806603435494964108

`A185124(4*4*n)`
-/

namespace A218171.P14806603435494964108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (4 * (4 * n))

end

end A218171.P14806603435494964108

namespace A218171

/-- `A185124(4*4*n)` -/
def P14806603435494964108.Spec : Prop :=
  ∀ n, P14806603435494964108.a n = A218171 n

end A218171

/-! ## A218171.P12697514448812605530

`A185125(4*4*n)`
-/

namespace A218171.P12697514448812605530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185125 (4 * (4 * n))

end

end A218171.P12697514448812605530

namespace A218171

/-- `A185125(4*4*n)` -/
def P12697514448812605530.Spec : Prop :=
  ∀ n, P12697514448812605530.a n = A218171 n

end A218171

/-! ## A218171.P10698112618890633271

`A184362(2*n)%2`
-/

namespace A218171.P10698112618890633271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184362 (2 * n)) 2

end

end A218171.P10698112618890633271

namespace A218171

/-- `A184362(2*n)%2` -/
def P10698112618890633271.Spec : Prop :=
  ∀ n, P10698112618890633271.a n = A218171 n

end A218171

/-! ## A218171.P2302965656167178260

`A047265(A130883(n))`
-/

namespace A218171.P2302965656167178260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A130883 n).toNat

end

end A218171.P2302965656167178260

namespace A218171

/-- `A047265(A130883(n))` -/
def P2302965656167178260.Spec : Prop :=
  ∀ n, P2302965656167178260.a n = A218171 n

end A218171

/-! ## A218171.P2609911881935836212

`A380038((n+1)*Δ[n²])`
-/

namespace A218171.P2609911881935836212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380038 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A218171.P2609911881935836212

namespace A218171

/-- `A380038((n+1)*Δ[n²])` -/
def P2609911881935836212.Spec : Prop :=
  ∀ n, P2609911881935836212.a n = A218171 n

end A218171

/-!
# A218172: Centered 12-gonal numbers which are semiprimes, intersection of A003154 and A001358.

The programs for A218172, the canonical program `A218172.P8365730826295416542` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218172 has offset 1).

The definition of A218172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218172.P8365730826295416542

`A322462(eq[2, ∑{e}[A322462(n), #]])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218172

/-- `A322462(eq[2, ∑{e}[A322462(n), #]])` -/
def P8365730826295416542.Spec : Prop :=
  ∀ n, P8365730826295416542.a n = A218172 (n + 1)

theorem P8365730826295416542.correct : P8365730826295416542.Spec := by
  intro n
  simp only [A218172, Nat.add_sub_cancel]

end A218172

/-! ## A218172.P8823015442892998445

`∩[A112771(n+1), A032528(n)]`
-/

namespace A218172.P8823015442892998445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P8823015442892998445

namespace A218172

/-- `∩[A112771(n+1), A032528(n)]` -/
def P8823015442892998445.Spec : Prop :=
  ∀ n, (P8823015442892998445.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P2108195289899457610

`∩[A112771(n+1), A265429(n)]`
-/

namespace A218172.P2108195289899457610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P2108195289899457610

namespace A218172

/-- `∩[A112771(n+1), A265429(n)]` -/
def P2108195289899457610.Spec : Prop :=
  ∀ n, (P2108195289899457610.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P11057639609429535382

`∩[A112771(n+1), A322462(n)]`
-/

namespace A218172.P11057639609429535382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P11057639609429535382

namespace A218172

/-- `∩[A112771(n+1), A322462(n)]` -/
def P11057639609429535382.Spec : Prop :=
  ∀ n, (P11057639609429535382.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P7658718290958266130

`∩[A003154(n+1), A112771(n+1)]`
-/

namespace A218172.P7658718290958266130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P7658718290958266130

namespace A218172

/-- `∩[A003154(n+1), A112771(n+1)]` -/
def P7658718290958266130.Spec : Prop :=
  ∀ n, (P7658718290958266130.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P6493009785375328875

`∩[A112771(n+1), A143978(n+1)]`
-/

namespace A218172.P6493009785375328875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P6493009785375328875

namespace A218172

/-- `∩[A112771(n+1), A143978(n+1)]` -/
def P6493009785375328875.Spec : Prop :=
  ∀ n, (P6493009785375328875.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P11586205706672925356

`∩[A112771(n+1), A184533(n+1)]`
-/

namespace A218172.P11586205706672925356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P11586205706672925356

namespace A218172

/-- `∩[A112771(n+1), A184533(n+1)]` -/
def P11586205706672925356.Spec : Prop :=
  ∀ n, (P11586205706672925356.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P16937294110196415584

`∩[A108181(n+1), A032528(n)]`
-/

namespace A218172.P16937294110196415584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P16937294110196415584

namespace A218172

/-- `∩[A108181(n+1), A032528(n)]` -/
def P16937294110196415584.Spec : Prop :=
  ∀ n, (P16937294110196415584.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P15196775794278678958

`∩[A108181(n+1), A322462(n)]`
-/

namespace A218172.P15196775794278678958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P15196775794278678958

namespace A218172

/-- `∩[A108181(n+1), A322462(n)]` -/
def P15196775794278678958.Spec : Prop :=
  ∀ n, (P15196775794278678958.a n : ℤ) = A218172 (n + 1)

end A218172

/-! ## A218172.P7804321724731433573

`∩[A003154(n+1), A108181(n+1)]`
-/

namespace A218172.P7804321724731433573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218172.P7804321724731433573

namespace A218172

/-- `∩[A003154(n+1), A108181(n+1)]` -/
def P7804321724731433573.Spec : Prop :=
  ∀ n, (P7804321724731433573.a n : ℤ) = A218172 (n + 1)

end A218172

/-!
# A218173: Expansion of f(x^7, x^17) - x^2 * f(x, x^23) in powers of x where f(,) is Ramanujan's two-variable theta function.

The programs for A218173, the canonical program `A218173.P4391662376202428754` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218173 has offset 0).

The definition of A218173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218173.P4391662376202428754

`-A010815(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218173

/-- `-A010815(2*n+1)` -/
def P4391662376202428754.Spec : Prop :=
  ∀ n, P4391662376202428754.a n = A218173 n

theorem P4391662376202428754.correct : P4391662376202428754.Spec := by
  intro n
  simp only [A218173]

end A218173

/-! ## A218173.P2952115979747942764

`A121373(Δ[n²])`
-/

namespace A218173.P2952115979747942764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218173.P2952115979747942764

namespace A218173

/-- `A121373(Δ[n²])` -/
def P2952115979747942764.Spec : Prop :=
  ∀ n, P2952115979747942764.a n = A218173 n

end A218173

/-! ## A218173.P2471117521704236928

`A257628(Δ[n²])`
-/

namespace A218173.P2471117521704236928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218173.P2471117521704236928

namespace A218173

/-- `A257628(Δ[n²])` -/
def P2471117521704236928.Spec : Prop :=
  ∀ n, P2471117521704236928.a n = A218173 n

end A218173

/-! ## A218173.P8892389693397751343

`A121373(2*n+1)^3`
-/

namespace A218173.P8892389693397751343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (2 * n + 1) ^ 3

end

end A218173.P8892389693397751343

namespace A218173

/-- `A121373(2*n+1)^3` -/
def P8892389693397751343.Spec : Prop :=
  ∀ n, P8892389693397751343.a n = A218173 n

end A218173

/-! ## A218173.P1054015665098653684

`A257628(2*n+1)^3`
-/

namespace A218173.P1054015665098653684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (2 * n + 1) ^ 3

end

end A218173.P1054015665098653684

namespace A218173

/-- `A257628(2*n+1)^3` -/
def P1054015665098653684.Spec : Prop :=
  ∀ n, P1054015665098653684.a n = A218173 n

end A218173

/-! ## A218173.P13392832423670275322

`A147843(2*n+1)%2`
-/

namespace A218173.P13392832423670275322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147843 (2 * n + 1)) 2

end

end A218173.P13392832423670275322

namespace A218173

/-- `A147843(2*n+1)%2` -/
def P13392832423670275322.Spec : Prop :=
  ∀ n, P13392832423670275322.a n = A218173 n

end A218173

/-! ## A218173.P17329025355605515965

`Δ[n²]-A286956(2*n+1)`
-/

namespace A218173.P17329025355605515965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A286956 (2 * n + 1)

end

end A218173.P17329025355605515965

namespace A218173

/-- `Δ[n²]-A286956(2*n+1)` -/
def P17329025355605515965.Spec : Prop :=
  ∀ n, P17329025355605515965.a n = A218173 n

end A218173

/-! ## A218173.P3798516398334593217

`A346634(n)-A343942(n)`
-/

namespace A218173.P3798516398334593217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 n - A343942 n

end

end A218173.P3798516398334593217

namespace A218173

/-- `A346634(n)-A343942(n)` -/
def P3798516398334593217.Spec : Prop :=
  ∀ n, P3798516398334593217.a n = A218173 n

end A218173

/-! ## A218173.P3034389624387129384

`2*A346634(n)-A078408(n)`
-/

namespace A218173.P3034389624387129384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346634 n - A078408 n

end

end A218173.P3034389624387129384

namespace A218173

/-- `2*A346634(n)-A078408(n)` -/
def P3034389624387129384.Spec : Prop :=
  ∀ n, P3034389624387129384.a n = A218173 n

end A218173

/-! ## A218173.P7077259676782226936

`A067659(2*n+1)-A343942(n)`
-/

namespace A218173.P7077259676782226936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (2 * n + 1) - A343942 n

end

end A218173.P7077259676782226936

namespace A218173

/-- `A067659(2*n+1)-A343942(n)` -/
def P7077259676782226936.Spec : Prop :=
  ∀ n, P7077259676782226936.a n = A218173 n

end A218173

/-! ## A218173.P6286840811278402679

`A346634(n)-A067661(2*n+1)`
-/

namespace A218173.P6286840811278402679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 n - A067661 (2 * n + 1)

end

end A218173.P6286840811278402679

namespace A218173

/-- `A346634(n)-A067661(2*n+1)` -/
def P6286840811278402679.Spec : Prop :=
  ∀ n, P6286840811278402679.a n = A218173 n

end A218173

/-! ## A218173.P14873652535290118083

`A096791(2*n+1)-A343942(n)`
-/

namespace A218173.P14873652535290118083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096791 (2 * n + 1) - A343942 n

end

end A218173.P14873652535290118083

namespace A218173

/-- `A096791(2*n+1)-A343942(n)` -/
def P14873652535290118083.Spec : Prop :=
  ∀ n, P14873652535290118083.a n = A218173 n

end A218173

/-! ## A218173.P12540886716418429508

`A033999(n)*A206959(2*n+1)`
-/

namespace A218173.P12540886716418429508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A206959 (2 * n + 1)

end

end A218173.P12540886716418429508

namespace A218173

/-- `A033999(n)*A206959(2*n+1)` -/
def P12540886716418429508.Spec : Prop :=
  ∀ n, P12540886716418429508.a n = A218173 n

end A218173

/-! ## A218173.P2705088212445070728

`or(A000007(n), A257628(2*n+1))`
-/

namespace A218173.P2705088212445070728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257628 (2 * n + 1))

end

end A218173.P2705088212445070728

namespace A218173

/-- `or(A000007(n), A257628(2*n+1))` -/
def P2705088212445070728.Spec : Prop :=
  ∀ n, P2705088212445070728.a n = A218173 n

end A218173

/-! ## A218173.P18159282627819521344

`A121373(2*n+1)+A000007(n+1)`
-/

namespace A218173.P18159282627819521344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (2 * n + 1) + A000007 (n + 1)

end

end A218173.P18159282627819521344

namespace A218173

/-- `A121373(2*n+1)+A000007(n+1)` -/
def P18159282627819521344.Spec : Prop :=
  ∀ n, P18159282627819521344.a n = A218173 n

end A218173

/-! ## A218173.P14411593033601355044

`A257628(2*n+1)+A000007(n+1)`
-/

namespace A218173.P14411593033601355044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (2 * n + 1) + A000007 (n + 1)

end

end A218173.P14411593033601355044

namespace A218173

/-- `A257628(2*n+1)+A000007(n+1)` -/
def P14411593033601355044.Spec : Prop :=
  ∀ n, P14411593033601355044.a n = A218173 n

end A218173

/-! ## A218173.P139516537176262168

`A257628(2*n+1)+A000038(n+1)`
-/

namespace A218173.P139516537176262168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (2 * n + 1) + A000038 (n + 1)

end

end A218173.P139516537176262168

namespace A218173

/-- `A257628(2*n+1)+A000038(n+1)` -/
def P139516537176262168.Spec : Prop :=
  ∀ n, P139516537176262168.a n = A218173 n

end A218173

/-! ## A218173.P17660425600067289505

`A000007(n+1)-A010815(2*n+1)`
-/

namespace A218173.P17660425600067289505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A010815 (2 * n + 1)

end

end A218173.P17660425600067289505

namespace A218173

/-- `A000007(n+1)-A010815(2*n+1)` -/
def P17660425600067289505.Spec : Prop :=
  ∀ n, P17660425600067289505.a n = A218173 n

end A218173

/-! ## A218173.P15981986318625890255

`A000038(n+1)-A010815(2*n+1)`
-/

namespace A218173.P15981986318625890255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A010815 (2 * n + 1)

end

end A218173.P15981986318625890255

namespace A218173

/-- `A000038(n+1)-A010815(2*n+1)` -/
def P15981986318625890255.Spec : Prop :=
  ∀ n, P15981986318625890255.a n = A218173 n

end A218173

/-! ## A218173.P2326513060015189342

`A010815(2*n+1)*A057428(n+1)`
-/

namespace A218173.P2326513060015189342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 * n + 1) * A057428 (n + 1)

end

end A218173.P2326513060015189342

namespace A218173

/-- `A010815(2*n+1)*A057428(n+1)` -/
def P2326513060015189342.Spec : Prop :=
  ∀ n, P2326513060015189342.a n = A218173 n

end A218173

/-!
# A218174: Number of n X n arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 n X n array.

The programs for A218174, there is no canonical definition to state claims against.
-/

/-! ## A218174.P5953596565768110557

`A218181(∑[4*n]+1)`
-/

namespace A218174.P5953596565768110557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218174.P5953596565768110557

/-!
# A218175: Number of nX2 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX2 array.

The programs for A218175, there is no canonical definition to state claims against.
-/

/-! ## A218175.P6239626282321478895

`A218181(∑[n+1]+2)`
-/

namespace A218175.P6239626282321478895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218175.P6239626282321478895

/-! ## A218175.P16147381076172383229

`lcm(2, A218181(A000096(n)+3))`
-/

namespace A218175.P16147381076172383229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218181 (A000096 n + 3).toNat)

end

end A218175.P16147381076172383229

/-! ## A218175.P2417132933424209225

`record[A218181(∑[A152271(n)])]`
-/

namespace A218175.P2417132933424209225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218175.P2417132933424209225

/-! ## A218175.P16123713683306908531

`record[A218181(Δ[A003453(n+5)])]`
-/

namespace A218175.P16123713683306908531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218175.P16123713683306908531

/-! ## A218175.P5285715882830617742

`record[A218181(record[A185180(n+1)])]`
-/

namespace A218175.P5285715882830617742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218175.P5285715882830617742

/-!
# A218176: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX3 array.

The programs for A218176, there is no canonical definition to state claims against.
-/

/-! ## A218176.P999512954966665879

`A218181(∑[n+2]+4)`
-/

namespace A218176.P999512954966665879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218176.P999512954966665879

/-! ## A218176.P301821537485043747

`lcm(2, A218181(A167614(n+1)))`
-/

namespace A218176.P301821537485043747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218181 (A167614 (n + 1)).toNat)

end

end A218176.P301821537485043747

/-! ## A218176.P17280159798781174605

`record[root(A218181(n+4), A143858(n+1))]`
-/

namespace A218176.P17280159798781174605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218181 (n + 4) : ℝ) ^ (1 / (A143858 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218176.P17280159798781174605

/-! ## A218176.P4852147414168218417

`record[A218181(A167614(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))]`
-/

namespace A218176.P4852147414168218417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A167614 (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218176.P4852147414168218417

/-! ## A218176.P18172417641226392055

`A218181(A167614(n+1))+A025469(n)`
-/

namespace A218176.P18172417641226392055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A167614 (n + 1)).toNat + A025469 n

end

end A218176.P18172417641226392055

/-!
# A218177: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX4 array.

The programs for A218177, there is no canonical definition to state claims against.
-/

/-! ## A218177.P7840122863923406255

`A218181(∑[n+3]+7)`
-/

namespace A218177.P7840122863923406255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A218177.P7840122863923406255

/-!
# A218178: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX5 array.

The programs for A218178, there is no canonical definition to state claims against.
-/

/-! ## A218178.P12541146399844877377

`A218181(A374005(n+1))`
-/

namespace A218178.P12541146399844877377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A374005 (n + 1)).toNat

end

end A218178.P12541146399844877377

/-! ## A218178.P11945628643016571918

`A218181(A167499(n+3))`
-/

namespace A218178.P11945628643016571918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A167499 (n + 3)).toNat

end

end A218178.P11945628643016571918

/-! ## A218178.P303831858700485213

`A218181(A155212(n)+13)`
-/

namespace A218178.P303831858700485213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A155212 n + 13).toNat

end

end A218178.P303831858700485213

/-! ## A218178.P18185638024289667808

`A218181(A056000(n)+15)`
-/

namespace A218178.P18185638024289667808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A056000 n + 15).toNat

end

end A218178.P18185638024289667808

/-! ## A218178.P10653849862894184970

`A218181(eq[7, A066657(n)])`
-/

namespace A218178.P10653849862894184970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218178.P10653849862894184970

/-!
# A218179: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX6 array.

The programs for A218179, there is no canonical definition to state claims against.
-/

/-! ## A218179.P9586704294687537044

`A218181(A374007(n+1))`
-/

namespace A218179.P9586704294687537044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A374007 (n + 1)).toNat

end

end A218179.P9586704294687537044

/-! ## A218179.P8793518402288742846

`A218181(A166136(n+4))`
-/

namespace A218179.P8793518402288742846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A166136 (n + 4)).toNat

end

end A218179.P8793518402288742846

/-! ## A218179.P12212039168128286186

`A218181(A056115(n)+21)`
-/

namespace A218179.P12212039168128286186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A056115 n + 21).toNat

end

end A218179.P12212039168128286186

/-! ## A218179.P332112430342818915

`A218181(Δ[A264443(n)]+10)`
-/

namespace A218179.P332112430342818915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (f1 (n + 1) - f1 n + 10).toNat

end

end A218179.P332112430342818915

/-!
# A218180: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX7 array.

The programs for A218180, there is no canonical definition to state claims against.
-/

/-! ## A218180.P4072006318629948326

`A218181(A374008(n+1))`
-/

namespace A218180.P4072006318629948326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218181 (A374008 (n + 1)).toNat

end

end A218180.P4072006318629948326

/-!
# A218181: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nXk array.

The programs for A218181, there is no canonical definition to state claims against.
-/

/-! ## A218181.P1066377785091951472

`lcm(A098069(n+1)², A105685(2*(n+1)))`
-/

namespace A218181.P1066377785091951472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098069 (n + 1) ^ 2) (A105685 (2 * (n + 1)))

end

end A218181.P1066377785091951472

/-! ## A218181.P6263590455094960286

`lcm(A098069(n+1), A105685(2*n+2))*A098069(n+1)`
-/

namespace A218181.P6263590455094960286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A098069 (n + 1)) (A105685 (2 * n + 2)) : ℤ) * A098069 (n + 1)

end

end A218181.P6263590455094960286

/-!
# A218182: Number of truth tables of bracketed formulas (case 1).

The programs for A218182, there is no canonical definition to state claims against.
-/

/-! ## A218182.P13049936045240309121

`A002265(A127619(n)+A127610(n))`
-/

namespace A218182.P13049936045240309121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A127619 n + A127610 n).toNat

end

end A218182.P13049936045240309121

/-! ## A218182.P11779800608691361109

`A235801(A103466(n+1))-A328439(n)`
-/

namespace A218182.P11779800608691361109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235801 (A103466 (n + 1)).toNat - A328439 n

end

end A218182.P11779800608691361109

/-! ## A218182.P15242867521130986283

`A028242(A248869(2*n))+A095341(n+1)/(n+1)-A000608(n)`
-/

namespace A218182.P15242867521130986283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (A248869 (2 * n)).toNat : ℚ) + (A095341 (n + 1) : ℚ) / (n + 1 : ℚ) - (A000608 n : ℚ)

end

end A218182.P15242867521130986283

/-!
# A218183: Number of true entries in truth tables of bracketed formulas connected by modified implication (case 3).

The programs for A218183, there is no canonical definition to state claims against.
-/

/-! ## A218183.P45207105528533879

`A152467(A193111(n)+A137958(n))`
-/

namespace A218183.P45207105528533879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A193111 n + A137958 n).toNat

end

end A218183.P45207105528533879

/-! ## A218183.P6303264024813353658

`A257684(A193045(n)+A193037(n))`
-/

namespace A218183.P6303264024813353658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A193045 n + A193037 n).toNat

end

end A218183.P6303264024813353658

/-! ## A218183.P4770340751212490781

`A000142(n)-A003056(A089412(n))`
-/

namespace A218183.P4770340751212490781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A003056 (A089412 n).toNat

end

end A218183.P4770340751212490781

/-!
# A218184: Number of true entries in truth tables of bracketed formulas connected by modified implication (case 1).

The programs for A218184, there is no canonical definition to state claims against.
-/

/-! ## A218184.P17995563556917342823

`A059995(A188687(n)+4)`
-/

namespace A218184.P17995563556917342823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A188687 n + 4).toNat

end

end A218184.P17995563556917342823

/-! ## A218184.P15309111325349199240

`A105515(2*A200718(n))`
-/

namespace A218184.P15309111325349199240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (2 * A200718 n).toNat

end

end A218184.P15309111325349199240

/-! ## A218184.P10555785542792807980

`Δ[A316491(A316475(Δ[n²]))]`
-/

namespace A218184.P10555785542792807980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 (A316475 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218184.P10555785542792807980

/-!
# A218185: Number of rows with the value true in the truth tables of all bracketed formulas with n distinct propositions p_1, ..., p_n connected by the binary connective of m-implication (case 3).

The programs for A218185, there is no canonical definition to state claims against.
-/

/-! ## A218185.P3367824994449496354

`A235043(A007675(n!))`
-/

namespace A218185.P3367824994449496354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (A007675 (Nat.factorial n)).toNat

end

end A218185.P3367824994449496354

/-! ## A218185.P12706559785959528589

`A123087(A276366(n+1))`
-/

namespace A218185.P12706559785959528589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A276366 (n + 1)).toNat

end

end A218185.P12706559785959528589

/-! ## A218185.P742607462679087505

`A002264(A276366(n+1)+1)`
-/

namespace A218185.P742607462679087505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A276366 (n + 1) + 1).toNat

end

end A218185.P742607462679087505

/-!
# A218186: Number of rows with the value true in the truth tables of all bracketed formulas with n distinct propositions p_1, ..., p_n connected by the binary connective of m-implication (case 1).

The programs for A218186, there is no canonical definition to state claims against.
-/

/-! ## A218186.P14991288626222976734

`A025230(A028310(n))*A157928(n)`
-/

namespace A218186.P14991288626222976734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025230 (A028310 n).toNat * A157928 n

end

end A218186.P14991288626222976734

/-! ## A218186.P2792287848748040724

`A025230(A028310(n))%A064062(n)`
-/

namespace A218186.P2792287848748040724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025230 (A028310 n).toNat) (A064062 n)

end

end A218186.P2792287848748040724

/-! ## A218186.P12068942123862872336

`A025230(A028310(n))*A340373(A008578(n+1))`
-/

namespace A218186.P12068942123862872336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025230 (A028310 n).toNat * A340373 (A008578 (n + 1)).toNat

end

end A218186.P12068942123862872336

/-! ## A218186.P15072497829726716670

`A025230(A123108(2*n))%A025230(n+1)`
-/

namespace A218186.P15072497829726716670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025230 (A123108 (2 * n)).toNat) (A025230 (n + 1))

end

end A218186.P15072497829726716670

/-! ## A218186.P17455655928345256298

`A025230(A000007(n)+n)%A025230(n+1)`
-/

namespace A218186.P17455655928345256298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025230 (A000007 n + (n : ℤ)).toNat) (A025230 (n + 1))

end

end A218186.P17455655928345256298

/-! ## A218186.P12703489625859079642

`A025230(A008619(A004273(n)))%A025230(n+1)`
-/

namespace A218186.P12703489625859079642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025230 (A008619 (A004273 n).toNat).toNat) (A025230 (n + 1))

end

end A218186.P12703489625859079642

/-!
# A218187: Primes that are the arithmetic mean of 1000 consecutive primes.

The programs for A218187, there is no canonical definition to state claims against.
-/

/-! ## A218187.P13724410942315653743

`p?[A123078(n+1)]`
-/

namespace A218187.P13724410942315653743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218187.P13724410942315653743

/-! ## A218187.P6558881407842659768

`record[p?[A123078(A007306(n))]]`
-/

namespace A218187.P6558881407842659768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123078 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218187.P6558881407842659768

/-! ## A218187.P18409835694298226382

`p?[record[A123078(A052938(n))]]`
-/

namespace A218187.P18409835694298226382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123078 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218187.P18409835694298226382

/-! ## A218187.P8749642045336966340

`p?[record[A123078(A065648(n))]]`
-/

namespace A218187.P8749642045336966340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123078 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A218187.P8749642045336966340

/-!
# A218188: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 n X n array.

The programs for A218188, there is no canonical definition to state claims against.
-/

/-! ## A218188.P8782678163675390214

`A218196(∑[4*n]+1)`
-/

namespace A218188.P8782678163675390214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218188.P8782678163675390214

/-! ## A218188.P1033139654002011867

`round(1/∏{e}[n+1, #])*A218196(n²+(n+1)²)`
-/

namespace A218188.P1033139654002011867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)) * A218196 (n ^ 2 + (n + 1) ^ 2)

end

end A218188.P1033139654002011867

/-! ## A218188.P4814750013330920164

`or(1, A218196(A001844(n)))`
-/

namespace A218188.P4814750013330920164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218196 (A001844 n).toNat)

end

end A218188.P4814750013330920164

/-!
# A218189: Hilltop maps: number of n X 1 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 n X 1 array.

The programs for A218189, there is no canonical definition to state claims against.
-/

/-! ## A218189.P6607047555405638012

`A218810(∑[n]+1)`
-/

namespace A218189.P6607047555405638012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218189.P6607047555405638012

/-! ## A218189.P1780238819526488712

`record[gcd(A002262(n), A218810(n+1))]`
-/

namespace A218189.P1780238819526488712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A218810 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218189.P1780238819526488712

/-! ## A218189.P18429191170980652349

`record[A185917(n+1)*A218810(n+1)]`
-/

namespace A218189.P18429191170980652349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) * A218810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218189.P18429191170980652349

/-! ## A218189.P6444053119266901302

`record[root(A218810(n+1), A028246(n+1))]`
-/

namespace A218189.P6444053119266901302
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218810 (n + 1) : ℝ) ^ (1 / (A028246 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218189.P6444053119266901302

/-! ## A218189.P8371261298344211325

`record[root(A218810(n+1), A134991(n+1))]`
-/

namespace A218189.P8371261298344211325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218810 (n + 1) : ℝ) ^ (1 / (A134991 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218189.P8371261298344211325

/-!
# A218190: Hilltop maps: number of nX2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nX2 array.

The programs for A218190, there is no canonical definition to state claims against.
-/

/-! ## A218190.P18065615244504910900

`A218196(∑[n+1]+2)`
-/

namespace A218190.P18065615244504910900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218190.P18065615244504910900

/-! ## A218190.P4406966051771231761

`record[A218196(n+3)/A218638(n+1)]`
-/

namespace A218190.P4406966051771231761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218196 (n + 3) : ℚ) / (A218638 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218190.P4406966051771231761

/-! ## A218190.P1241125047165376193

`A218638(∑[n+2])`
-/

namespace A218190.P1241125047165376193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218190.P1241125047165376193

/-! ## A218190.P6204540555647681600

`record[A218196(abs(A201163(n)))]`
-/

namespace A218190.P6204540555647681600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218190.P6204540555647681600

/-! ## A218190.P12416956046599123066

`record[A218196(Δ[A003453(n+5)])]`
-/

namespace A218190.P12416956046599123066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218190.P12416956046599123066

/-!
# A218191: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nX3 array.

The programs for A218191, there is no canonical definition to state claims against.
-/

/-! ## A218191.P16217331689366239948

`A218196(∑[n+2]+4)`
-/

namespace A218191.P16217331689366239948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218191.P16217331689366239948

/-! ## A218191.P17025207434161981068

`or(1, A218196(A167499(n)+n))`
-/

namespace A218191.P17025207434161981068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218196 (A167499 n + (n : ℤ)).toNat)

end

end A218191.P17025207434161981068

/-! ## A218191.P16378613364044612318

`A007318(C(3, n))*A218196(A167499(n)+n)`
-/

namespace A218191.P16378613364044612318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A218196 (A167499 n + (n : ℤ)).toNat

end

end A218191.P16378613364044612318

/-! ## A218191.P3703325120734802580

`A014963(lcm(6, n+1))*A218196(A167499(n)+n)`
-/

namespace A218191.P3703325120734802580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm 6 (n + 1)) * A218196 (A167499 n + (n : ℤ)).toNat

end

end A218191.P3703325120734802580

/-! ## A218191.P1294948863882241736

`A014963(52*(n+1))*A218196(A167499(n)+n)`
-/

namespace A218191.P1294948863882241736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (52 * (n + 1)) * A218196 (A167499 n + (n : ℤ)).toNat

end

end A218191.P1294948863882241736

/-!
# A218192: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nX4 array.

The programs for A218192, there is no canonical definition to state claims against.
-/

/-! ## A218192.P4523514360148041146

`A218196(A374004(n+1))`
-/

namespace A218192.P4523514360148041146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A374004 (n + 1)).toNat

end

end A218192.P4523514360148041146

/-! ## A218192.P8108201271099678904

`A218196(A141214(n)+7)`
-/

namespace A218192.P8108201271099678904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A141214 n + 7).toNat

end

end A218192.P8108201271099678904

/-! ## A218192.P14777224128837188784

`A218196(A052905(n)+9)`
-/

namespace A218192.P14777224128837188784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A052905 n + 9).toNat

end

end A218192.P14777224128837188784

/-! ## A218192.P6887403373041876639

`A218196(A055999(n)+10)`
-/

namespace A218192.P6887403373041876639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A055999 n + 10).toNat

end

end A218192.P6887403373041876639

/-! ## A218192.P11519747817545606840

`A218196(A167614(n+2)+1)`
-/

namespace A218192.P11519747817545606840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A167614 (n + 2) + 1).toNat

end

end A218192.P11519747817545606840

/-!
# A218193: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nX5 array.

The programs for A218193, there is no canonical definition to state claims against.
-/

/-! ## A218193.P6658869331427154662

`A218196(A374005(n+1))`
-/

namespace A218193.P6658869331427154662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A374005 (n + 1)).toNat

end

end A218193.P6658869331427154662

/-! ## A218193.P11057909031385780283

`A218196(A167499(n+3))`
-/

namespace A218193.P11057909031385780283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A167499 (n + 3)).toNat

end

end A218193.P11057909031385780283

/-! ## A218193.P6789167101498302688

`A218196(A155212(n)+13)`
-/

namespace A218193.P6789167101498302688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A155212 n + 13).toNat

end

end A218193.P6789167101498302688

/-! ## A218193.P1646729812219637126

`A218196(A056000(n)+15)`
-/

namespace A218193.P1646729812219637126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A056000 n + 15).toNat

end

end A218193.P1646729812219637126

/-! ## A218193.P1139443223911309971

`A218196(A167614(n+3)+2)`
-/

namespace A218193.P1139443223911309971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A167614 (n + 3) + 2).toNat

end

end A218193.P1139443223911309971

/-!
# A218194: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nX6 array.

The programs for A218194, there is no canonical definition to state claims against.
-/

/-! ## A218194.P11901321824848558747

`A218196(A374007(n+1))`
-/

namespace A218194.P11901321824848558747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A374007 (n + 1)).toNat

end

end A218194.P11901321824848558747

/-! ## A218194.P11395609460377541231

`A218196(eq[3, A219347(n)])`
-/

namespace A218194.P11395609460377541231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218194.P11395609460377541231

/-! ## A218194.P16409687138546042311

`A218196(eq[5, A193592(n)])`
-/

namespace A218194.P16409687138546042311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218194.P16409687138546042311

/-! ## A218194.P3401687221497387989

`A218196(eq[6, A200370(n+1)])`
-/

namespace A218194.P3401687221497387989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218194.P3401687221497387989

/-! ## A218194.P15999359158967967846

`A218196(eq[8, A185782(n+1)])`
-/

namespace A218194.P15999359158967967846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218194.P15999359158967967846

/-!
# A218195: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nX7 array.

The programs for A218195, there is no canonical definition to state claims against.
-/

/-! ## A218195.P8189958011722059197

`A218196(C(n+7, 2)+1+n)`
-/

namespace A218195.P8189958011722059197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (Nat.choose (n + 7) 2 + 1 + n)

end

end A218195.P8189958011722059197

/-! ## A218195.P17276438718099244677

`A218196(A374008(n+1))`
-/

namespace A218195.P17276438718099244677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A374008 (n + 1)).toNat

end

end A218195.P17276438718099244677

/-! ## A218195.P8641849217542820245

`A218196(A055999(n+4))`
-/

namespace A218195.P8641849217542820245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A055999 (n + 4)).toNat

end

end A218195.P8641849217542820245

/-! ## A218195.P17485976813175700057

`A218196(A056121(n)+22)`
-/

namespace A218195.P17485976813175700057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A056121 n + 22).toNat

end

end A218195.P17485976813175700057

/-!
# A218196: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..3 nXk array.

The programs for A218196, there is no canonical definition to state claims against.
-/

/-! ## A218196.P4148180856903317118

`A004277(A218372(n+1))-A218242(n+1)`
-/

namespace A218196.P4148180856903317118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A218372 (n + 1)).toNat - A218242 (n + 1)

end

end A218196.P4148180856903317118

/-! ## A218196.P13200378938616787150

`A218372(n+1)-A014083(A235198(n+1))`
-/

namespace A218196.P13200378938616787150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (n + 1) - A014083 (A235198 (n + 1)).toNat

end

end A218196.P13200378938616787150

/-! ## A218196.P6850983906196917677

`A218242(n+1)-A014083(A235198(n+1))²`
-/

namespace A218196.P6850983906196917677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (n + 1) - A014083 (A235198 (n + 1)).toNat ^ 2

end

end A218196.P6850983906196917677

/-! ## A218196.P4061392796425525922

`A218372(n+1)-A147220(n+1)%4+1`
-/

namespace A218196.P4061392796425525922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (n + 1) - Int.tmod (A147220 (n + 1)) 4 + 1

end

end A218196.P4061392796425525922

/-! ## A218196.P11599985969533882314

`A228986(A044915(n+1))-A143069(n+1)`
-/

namespace A218196.P11599985969533882314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A044915 (n + 1)).toNat - A143069 (n + 1)

end

end A218196.P11599985969533882314

/-!
# A218198: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 n X n array.

The programs for A218198, there is no canonical definition to state claims against.
-/

/-! ## A218198.P16795605400167382025

`A218206(∑[4*n]+1)`
-/

namespace A218198.P16795605400167382025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218198.P16795605400167382025

/-! ## A218198.P1716147823431471594

`or(1, A218206(A001844(n)))`
-/

namespace A218198.P1716147823431471594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218206 (A001844 n).toNat)

end

end A218198.P1716147823431471594

/-! ## A218198.P10393049432914138822

`record[A218206(Δ[A235355(n)])]`
-/

namespace A218198.P10393049432914138822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218206 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218198.P10393049432914138822

/-!
# A218199: Hilltop maps: number of n X 1 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..2 n X 1 array.

The programs for A218199, the canonical program `A218199.P15109642524207029995` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218199 has offset 1).

The definition of A218199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218199.P15109642524207029995

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=25`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218199

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P15109642524207029995.Spec : Prop :=
  ∀ n, (P15109642524207029995.a n : ℤ) = A218199 (n + 1)

theorem P15109642524207029995.correct : P15109642524207029995.Spec := by
  intro n
  simp only [A218199, Nat.add_sub_cancel]

end A218199

/-! ## A218199.P14373275182651954475

`or(1, A102026(n+1)-1)`
-/

namespace A218199.P14373275182651954475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102026 (n + 1) - 1)

end

end A218199.P14373275182651954475

namespace A218199

/-- `or(1, A102026(n+1)-1)` -/
def P14373275182651954475.Spec : Prop :=
  ∀ n, P14373275182651954475.a n = A218199 (n + 1)

end A218199

/-! ## A218199.P9033765082275104627

`A102026(n+1)-A019590(n+1)`
-/

namespace A218199.P9033765082275104627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102026 (n + 1) - A019590 (n + 1)

end

end A218199.P9033765082275104627

namespace A218199

/-- `A102026(n+1)-A019590(n+1)` -/
def P9033765082275104627.Spec : Prop :=
  ∀ n, P9033765082275104627.a n = A218199 (n + 1)

end A218199

/-! ## A218199.P7976836824831619216

`A135493(n+1)-a(A289207(n))` with `a(0)=1`
-/

namespace A218199.P7976836824831619216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135493 (n + 1) - a (A289207 n).toNat

end

end A218199.P7976836824831619216

namespace A218199

/-- `A135493(n+1)-a(A289207(n))` -/
def P7976836824831619216.Spec : Prop :=
  ∀ n, P7976836824831619216.a n = A218199 (n + 1)

end A218199

/-! ## A218199.P17422447545921480507

`A000322(n+1)+∑[2*A135056(n)]`
-/

namespace A218199.P17422447545921480507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218199.P17422447545921480507

namespace A218199

/-- `A000322(n+1)+∑[2*A135056(n)]` -/
def P17422447545921480507.Spec : Prop :=
  ∀ n, P17422447545921480507.a n = A218199 (n + 1)

end A218199

/-! ## A218199.P16368877394437581300

`A001591(n+2)+A001591(n+6)-A001591(n+4)`
-/

namespace A218199.P16368877394437581300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 2) + (A001591 (n + 6) - A001591 (n + 4))

end

end A218199.P16368877394437581300

namespace A218199

/-- `A001591(n+2)+A001591(n+6)-A001591(n+4)` -/
def P16368877394437581300.Spec : Prop :=
  ∀ n, P16368877394437581300.a n = A218199 (n + 1)

end A218199

/-! ## A218199.P10691879596586927848

`Δ[A251653(n+6)]-A251653(n+2)`
-/

namespace A218199.P10691879596586927848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251653 (n + 2)

end

end A218199.P10691879596586927848

namespace A218199

/-- `Δ[A251653(n+6)]-A251653(n+2)` -/
def P10691879596586927848.Spec : Prop :=
  ∀ n, P10691879596586927848.a n = A218199 (n + 1)

end A218199

/-! ## A218199.P16265692531743022964

`(A000322(n+3)+A000322(n+4))/2`
-/

namespace A218199.P16265692531743022964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000322 (n + 3) + A000322 (n + 4) : ℚ) / 2

end

end A218199.P16265692531743022964

namespace A218199

/-- `(A000322(n+3)+A000322(n+4))/2` -/
def P16265692531743022964.Spec : Prop :=
  ∀ n, P16265692531743022964.a n = (A218199 (n + 1) : ℚ)

end A218199

/-! ## A218199.P8219785574215796890

`A000322(n+8)%A001591(n+9)`
-/

namespace A218199.P8219785574215796890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000322 (n + 8)) (A001591 (n + 9))

end

end A218199.P8219785574215796890

namespace A218199

/-- `A000322(n+8)%A001591(n+9)` -/
def P8219785574215796890.Spec : Prop :=
  ∀ n, P8219785574215796890.a n = A218199 (n + 1)

end A218199

