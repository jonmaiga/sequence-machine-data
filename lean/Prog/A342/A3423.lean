import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A342300: Least nonnegative number greater than the previous number which is simultaneously an n-gonal and (n+1)-gonal number.

The programs for A342300, there is no canonical definition to state claims against.
-/

/-! ## A342300.P17706762294691467720

`A061563(a(n-1))²` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A342300.P17706762294691467720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A061563 (a (n - 1)).toNat ^ 2

end

end A342300.P17706762294691467720

/-!
# A342301: Number of Goldbach partitions of 2n into an odd-indexed prime and an even-indexed prime.

The programs for A342301, there is no canonical definition to state claims against.
-/

/-! ## A342301.P6578556246784051663

`A344987(n+1)+A344986(n+1)`
-/

namespace A342301.P6578556246784051663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344987 (n + 1) + A344986 (n + 1)

end

end A342301.P6578556246784051663

/-! ## A342301.P13998101438544916041

`A344986(n+1)+A330005(A262192(n+1)+1)`
-/

namespace A342301.P13998101438544916041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344986 (n + 1) + A330005 (A262192 (n + 1) + 1).toNat

end

end A342301.P13998101438544916041

/-! ## A342301.P6027869750688158133

`A344986(n+1)+A096693(A198669(n+2)+1)`
-/

namespace A342301.P6027869750688158133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344986 (n + 1) + A096693 (A198669 (n + 2) + 1).toNat

end

end A342301.P6027869750688158133

/-! ## A342301.P12464494144454870028

`A344986(n+1)+A096493(A223620(n+2)+1)`
-/

namespace A342301.P12464494144454870028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344986 (n + 1) + A096493 (A223620 (n + 2) + 1).toNat

end

end A342301.P12464494144454870028

/-! ## A342301.P17457347049326104543

`A059897(A178415(2*(n+2)))%A270969(3*n+1)`
-/

namespace A342301.P17457347049326104543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059897 (A178415 (2 * (n + 2))).toNat) (A270969 (3 * n + 1))

end

end A342301.P17457347049326104543

/-!
# A342302: Numbers k such that A001414(k), k+A001414(k) and 2*k+A001414(k) are prime.

The programs for A342302, there is no canonical definition to state claims against.
-/

/-! ## A342302.P9355736549734740534

`lt[2, A343016(A028310(n))]`
-/

namespace A342302.P9355736549734740534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342302.P9355736549734740534

/-! ## A342302.P2276737217487958122

`(A092749(A000326(n))+1)*(n+2)`
-/

namespace A342302.P2276737217487958122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092749 (A000326 n).toNat + 1) * (n + 2 : ℤ)

end

end A342302.P2276737217487958122

/-!
# A342304: k-digit positive numbers exactly one of whose substrings is divisible by k.

The programs for A342304, there is no canonical definition to state claims against.
-/

/-! ## A342304.P14701492588294341324

`eq[n, A275775(abs(1-n)+1)]`
-/

namespace A342304.P14701492588294341324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342304.P14701492588294341324

/-! ## A342304.P17279467515828446940

`eq[n+1, A275775(n+1)]+1`
-/

namespace A342304.P17279467515828446940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342304.P17279467515828446940

/-! ## A342304.P11400571005507496082

`A118759(A097962(n+1))`
-/

namespace A342304.P11400571005507496082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A097962 (n + 1)).toNat

end

end A342304.P11400571005507496082

/-! ## A342304.P4492425559745122669

`A118759(A098951(n+2))`
-/

namespace A342304.P4492425559745122669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A098951 (n + 2)).toNat

end

end A342304.P4492425559745122669

/-! ## A342304.P7054957165835939254

`∑[A178864(Δ[A097962(n)])]`
-/

namespace A342304.P7054957165835939254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342304.P7054957165835939254

/-!
# A342309: When A123556(n) is the number of primes (not necessarily consecutive) in the longest arithmetic progression of primes with common difference n, a(n) is the smallest term of the first such arithmetic progression.

The programs for A342309, there is no canonical definition to state claims against.
-/

/-! ## A342309.P16321439225541775526

`A124064(∑[A123556(n+1)]^(n%2))`
-/

namespace A342309.P16321439225541775526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124064 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2)).toNat

end

end A342309.P16321439225541775526

/-! ## A342309.P17510393488584790265

`A124064(∑[A123556(n+1)])`
-/

namespace A342309.P17510393488584790265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342309.P17510393488584790265

/-! ## A342309.P15909884749965841140

`A015886(n*n%2+1)`
-/

namespace A342309.P15909884749965841140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (n * (n % 2) + 1)

end

end A342309.P15909884749965841140

/-! ## A342309.P14352738518936488858

`A015886((n+1)^and(1, n))`
-/

namespace A342309.P14352738518936488858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 ((n + 1) ^ Nat.land 1 n)

end

end A342309.P14352738518936488858

/-! ## A342309.P1507074713294179768

`A015886(gcd(n+1, val(n+2, 2)))`
-/

namespace A342309.P1507074713294179768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 2) 2))

end

end A342309.P1507074713294179768

/-!
# A342310: Prime Erdős-Woods numbers.

The programs for A342310, there is no canonical definition to state claims against.
-/

/-! ## A342310.P2344044673426593463

`p?[A111042(n+1)]`
-/

namespace A342310.P2344044673426593463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342310.P2344044673426593463

/-! ## A342310.P13247977194759303855

`p?[record[A111042(A052938(n))]]`
-/

namespace A342310.P13247977194759303855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111042 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342310.P13247977194759303855

/-! ## A342310.P3433425219403487923

`p?[record[A111042(A126759(n))]]`
-/

namespace A342310.P3433425219403487923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111042 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342310.P3433425219403487923

/-! ## A342310.P3953933157180196650

`p?[record[A111042(A028920(n))]]`
-/

namespace A342310.P3953933157180196650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111042 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342310.P3953933157180196650

/-! ## A342310.P1816560908970780104

`p?[record[A111042(A112382(n))]]`
-/

namespace A342310.P1816560908970780104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111042 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342310.P1816560908970780104

/-!
# A342311: T(n, k) = (n - k + 2)*binomial(2*n, n + k - 2). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A342311, there is no canonical definition to state claims against.
-/

/-! ## A342311.P2243733263259392206

`A024222(A004731(2*n))`
-/

namespace A342311.P2243733263259392206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A004731 (2 * n)).toNat

end

end A342311.P2243733263259392206

/-! ## A342311.P6984546681199623114

`A277030(C(A004001(3*n+1), ∑[(n²-n)%4]))`
-/

namespace A342311.P6984546681199623114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (Nat.choose (A004001 (3 * n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A342311.P6984546681199623114

/-! ## A342311.P3468638463501648629

`lcm(A002322(A001790(n)), A029578(n))`
-/

namespace A342311.P3468638463501648629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002322 (A001790 n).toNat) (A029578 n)

end

end A342311.P3468638463501648629

/-! ## A342311.P4697445361751112701

`lcm(A024222(A001790(n)), A034870(n))`
-/

namespace A342311.P4697445361751112701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024222 (A001790 n).toNat) (A034870 n)

end

end A342311.P4697445361751112701

/-! ## A342311.P11942443181637123930

`A001221(n+1)*A024222(A001790(n))`
-/

namespace A342311.P11942443181637123930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A024222 (A001790 n).toNat

end

end A342311.P11942443181637123930

/-!
# A342313: T(n, k) = (n + k - 1)*(n + k)*binomial(2*n + 1, n - k + 1) with T(0, 0) = T(1, 0) = 1. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A342313, there is no canonical definition to state claims against.
-/

/-! ## A342313.P3913163754044468562

`A008480((A278139(n+1)+1)*(n+1))`
-/

namespace A342313.P3913163754044468562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 ((A278139 (n + 1) + 1) * (n + 1 : ℤ)).toNat

end

end A342313.P3913163754044468562

/-! ## A342313.P17831574255067591694

`A178867(∑{d}[n+1, #]*A206369(n+1))`
-/

namespace A342313.P17831574255067591694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178867 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A206369 (n + 1)).toNat

end

end A342313.P17831574255067591694

/-! ## A342313.P2161188709805469700

`A083787(n+1)/A001222(∑{d}[n+1, #]+1)`
-/

namespace A342313.P2161188709805469700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083787 (n + 1) : ℚ) / (A001222 (∑ d ∈ Nat.divisors (f1 n), d + 1) : ℚ)

end

end A342313.P2161188709805469700

/-!
# A342314: T(n, k) = [x^k] 2^n*(Euler(n, x/2) + Euler(n, x)), where Euler(n, x) are the Euler polynomials. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A342314, there is no canonical definition to state claims against.
-/

/-! ## A342314.P1376931627945608915

`A081733(n)+A004174(n)`
-/

namespace A342314.P1376931627945608915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081733 n + A004174 n

end

end A342314.P1376931627945608915

/-! ## A342314.P9054732941623304841

`(A059268(n)+1)*A081733(n)`
-/

namespace A342314.P9054732941623304841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n + 1) * A081733 n

end

end A342314.P9054732941623304841

/-! ## A342314.P3579368166459804475

`A342315(n)+2*A081733(n)`
-/

namespace A342314.P3579368166459804475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342315 n + 2 * A081733 n

end

end A342314.P3579368166459804475

/-! ## A342314.P14429933239548825856

`2*A004174(n)-A342315(n)`
-/

namespace A342314.P14429933239548825856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004174 n - A342315 n

end

end A342314.P14429933239548825856

/-! ## A342314.P2411716240659574293

`(2^A002262(n)+1)*A081733(n)`
-/

namespace A342314.P2411716240659574293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A002262 n : ℤ) + 1) * (A081733 n : ℚ)

end

end A342314.P2411716240659574293

/-! ## A342314.P14731926496162914087

`A004174(n)+char[∑[n-1]]-A162660(n)`
-/

namespace A342314.P14731926496162914087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 n + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A162660 n)

end

end A342314.P14731926496162914087

/-! ## A342314.P13101164570589048646

`A081733(n)+A004175(A061579(n))`
-/

namespace A342314.P13101164570589048646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081733 n + A004175 (A061579 n).toNat

end

end A342314.P13101164570589048646

/-! ## A342314.P203044705239305446

`A000051(A002262(n))*A081733(n)`
-/

namespace A342314.P203044705239305446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002262 n).toNat * A081733 n

end

end A342314.P203044705239305446

/-! ## A342314.P16336383684977810490

`A081733(n)*A141310(A059268(n))`
-/

namespace A342314.P16336383684977810490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081733 n * A141310 (A059268 n).toNat

end

end A342314.P16336383684977810490

/-! ## A342314.P11464731582152520930

`(A025480(A089633(n))+2)*A081733(n)`
-/

namespace A342314.P11464731582152520930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025480 (A089633 n).toNat + 2) * A081733 n

end

end A342314.P11464731582152520930

/-!
# A342315: T(n, k) = [x^k] 2^n*(Euler(n, x) - Euler(n, x/2)), where Euler(n, x) are the Euler polynomials. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A342315, there is no canonical definition to state claims against.
-/

/-! ## A342315.P1134806874950191685

`A004174(n)-A081733(n)`
-/

namespace A342315.P1134806874950191685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 n - A081733 n

end

end A342315.P1134806874950191685

/-! ## A342315.P8858587947503862027

`(A059268(n)-1)*A081733(n)`
-/

namespace A342315.P8858587947503862027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n - 1) * A081733 n

end

end A342315.P8858587947503862027

/-! ## A342315.P15350610241605926709

`2*A004174(n)-A342314(n)`
-/

namespace A342315.P15350610241605926709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004174 n - A342314 n

end

end A342315.P15350610241605926709

/-! ## A342315.P10501095085445110979

`A342314(n)-2*A081733(n)`
-/

namespace A342315.P10501095085445110979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342314 n - 2 * A081733 n

end

end A342315.P10501095085445110979

/-! ## A342315.P11124391316915914520

`A004174(n)-(char[∑[n-1]]-A162660(n))`
-/

namespace A342315.P11124391316915914520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A162660 n)

end

end A342315.P11124391316915914520

/-! ## A342315.P11327811766363546286

`A004175(A061579(n))-A081733(n)`
-/

namespace A342315.P11327811766363546286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A061579 n).toNat - A081733 n

end

end A342315.P11327811766363546286

/-! ## A342315.P13003307038820633892

`A000225(A002262(n))*A081733(n)`
-/

namespace A342315.P13003307038820633892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002262 n).toNat * A081733 n

end

end A342315.P13003307038820633892

/-! ## A342315.P5728585451064141427

`A011371(A059268(n))*A081733(n)`
-/

namespace A342315.P5728585451064141427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A059268 n).toNat * A081733 n

end

end A342315.P5728585451064141427

/-! ## A342315.P10189952387360841784

`A025480(A089633(n))*A081733(n)`
-/

namespace A342315.P10189952387360841784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A089633 n).toNat * A081733 n

end

end A342315.P10189952387360841784

/-! ## A342315.P2942615238205779384

`A004174(n)-A004174(n)/A059268(n)`
-/

namespace A342315.P2942615238205779384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) - (A004174 n : ℚ) / (A059268 n : ℚ)

end

end A342315.P2942615238205779384

/-!
# A342318: a(n) = numerator(((i^n * PolyLog(1 - n, -i) + (-i)^n * PolyLog(1 - n, i))) / (4^n - 2^n)) if n > 0 and a(0) = 1. Here i denotes the imaginary unit.

The programs for A342318, there is no canonical definition to state claims against.
-/

/-! ## A342318.P8826245325344095404

`gcd(A120082(n), A246006(n))`
-/

namespace A342318.P8826245325344095404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120082 n) (A246006 n)

end

end A342318.P8826245325344095404

/-! ## A342318.P17676760059398299595

`gcd(A008281(A000124(n)), A164555(n))`
-/

namespace A342318.P17676760059398299595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008281 (A000124 n).toNat) (A164555 n)

end

end A342318.P17676760059398299595

/-! ## A342318.P9439303935932087472

`gcd(A109449(A161680(n)), A157779(n))`
-/

namespace A342318.P9439303935932087472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109449 (A161680 n).toNat) (A157779 n)

end

end A342318.P9439303935932087472

/-! ## A342318.P10352116238314660747

`lcm(A241601(n), A246006(A093178(n)))`
-/

namespace A342318.P10352116238314660747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A241601 n) (A246006 (A093178 n).toNat)

end

end A342318.P10352116238314660747

/-! ## A342318.P3229474743461860402

`A246006(n)/A336898(n/A093178(n))`
-/

namespace A342318.P3229474743461860402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246006 n : ℚ) / (A336898 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat : ℚ)

end

end A342318.P3229474743461860402

/-!
# A342319: a(n) = denominator(((i^n * PolyLog(1 - n, -i) + (-i)^n * PolyLog(1 - n, i))) / (4^n - 2^n)) if n > 0 and a(0) = 1. Here i denotes the imaginary unit.

The programs for A342319, there is no canonical definition to state claims against.
-/

/-! ## A342319.P14306984534034916217

`A193562(A005061(n))*A255047(n)`
-/

namespace A342319.P14306984534034916217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (A005061 n).toNat * A255047 n

end

end A342319.P14306984534034916217

/-! ## A342319.P14377102268990035173

`A028310(A193473(n)*A328612(n))`
-/

namespace A342319.P14377102268990035173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A193473 n * A328612 n).toNat

end

end A342319.P14377102268990035173

/-! ## A342319.P5694306560574829658

`A028310(A076512(n+1)*A193473(n))`
-/

namespace A342319.P5694306560574829658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A076512 (n + 1) * A193473 n).toNat

end

end A342319.P5694306560574829658

/-!
# A342320: Integers k such that Euler(k, 1) is an integer multiple of Bernoulli(k + 1, 1).

The programs for A342320, there is no canonical definition to state claims against.
-/

/-! ## A342320.P13417323749654901880

`A014741(1+n)-1`
-/

namespace A342320.P13417323749654901880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (1 + n) - 1

end

end A342320.P13417323749654901880

/-! ## A342320.P10658921722579195103

`xor(A014741(1+n), A122553(n))`
-/

namespace A342320.P10658921722579195103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014741 (1 + n)) (A122553 n)

end

end A342320.P10658921722579195103

/-! ## A342320.P2838182668545140054

`xor(dr(A019557(n)), A014741(n+1))`
-/

namespace A342320.P2838182668545140054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.digitalRoot (A019557 n) : ℤ) (A014741 (n + 1))

end

end A342320.P2838182668545140054

/-! ## A342320.P16946658744322598152

`A057428(n+1)+A014741(n+1)`
-/

namespace A342320.P16946658744322598152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A014741 (n + 1)

end

end A342320.P16946658744322598152

/-! ## A342320.P6042367759801635384

`A049347(3*n+4)+A014741(n+1)`
-/

namespace A342320.P6042367759801635384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 4) + A014741 (n + 1)

end

end A342320.P6042367759801635384

/-! ## A342320.P7096479089832700150

`∪[A015942(n+1), A070694(n+1)]-1`
-/

namespace A342320.P7096479089832700150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A342320.P7096479089832700150

/-! ## A342320.P3206255469366093898

`∪[A015942(n+1), A272934(n+1)]-1`
-/

namespace A342320.P3206255469366093898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272934 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A342320.P3206255469366093898

/-! ## A342320.P18368396440912493842

`A318827(A014741(n+1))`
-/

namespace A342320.P18368396440912493842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (A014741 (n + 1)).toNat

end

end A342320.P18368396440912493842

/-! ## A342320.P12012593962622394819

`∩[A068563(n+1), A111284(n+1)]-1`
-/

namespace A342320.P12012593962622394819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A342320.P12012593962622394819

/-!
# A342322: T(n, k) = A064538(n)*[x^k] p(n, x) where p(n, x) = 1 + Sum_{k = 0..n-1} binomial[n, k]*p(k, 1)* ((x - 1)^(n - k) - 1) / (n - k + 1) for n >= 1 and p(0, x) = 1. Triangle read by rows, for 0 <= k <= n.

The programs for A342322, there is no canonical definition to state claims against.
-/

/-! ## A342322.P109836019513538444

`A325967(A001519(n))+A109466(n)`
-/

namespace A342322.P109836019513538444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (A001519 n).toNat + A109466 n

end

end A342322.P109836019513538444

/-! ## A342322.P14324971452980241882

`A259287(n)-A259287(A005316(n))`
-/

namespace A342322.P14324971452980241882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259287 n - A259287 (A005316 n).toNat

end

end A342322.P14324971452980241882

/-! ## A342322.P1227497208171951355

`A336356(A018009(n+1))+A109466(n)`
-/

namespace A342322.P1227497208171951355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (A018009 (n + 1)).toNat + A109466 n

end

end A342322.P1227497208171951355

/-! ## A342322.P9498566178875915904

`A037829(n+1)-A016355(A266055(n+1))`
-/

namespace A342322.P9498566178875915904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (n + 1) - A016355 (A266055 (n + 1)).toNat

end

end A342322.P9498566178875915904

/-! ## A342322.P2131834101109740258

`A092303(A343050(n+1))`
-/

namespace A342322.P2131834101109740258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092303 (A343050 (n + 1)).toNat

end

end A342322.P2131834101109740258

/-!
# A342323: Square array read by ascending antidiagonals: T(n,k) = gcd(k, Phi_k(n)), where Phi_k is the k-th cyclotomic polynomial, n >= 0, k >= 1.

The programs for A342323, there is no canonical definition to state claims against.
-/

/-! ## A342323.P15539521052239237642

`A342255(A083920(n)+1)`
-/

namespace A342323.P15539521052239237642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (A083920 n + 1).toNat

end

end A342323.P15539521052239237642

/-! ## A342323.P6943330684564366572

`A342255(A122797(n+1))`
-/

namespace A342323.P6943330684564366572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (A122797 (n + 1)).toNat

end

end A342323.P6943330684564366572

/-! ## A342323.P17556991966581986821

`A342255(A271439(n)+1)`
-/

namespace A342323.P17556991966581986821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (A271439 n + 1).toNat

end

end A342323.P17556991966581986821

/-! ## A342323.P3988393334220038024

`A342255(1-A003056(n)+n)`
-/

namespace A342323.P3988393334220038024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (1 - A003056 n + (n : ℤ)).toNat

end

end A342323.P3988393334220038024

/-! ## A342323.P12489858019851034007

`A342255(1-(A003056(n)-n))`
-/

namespace A342323.P12489858019851034007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (1 - (A003056 n - (n : ℤ))).toNat

end

end A342323.P12489858019851034007

/-! ## A342323.P16187894920544683187

`A342255(2-A002024(n+1)+n)`
-/

namespace A342323.P16187894920544683187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (2 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A342323.P16187894920544683187

/-! ## A342323.P11951927204004561567

`A342255(A245300(n)+1)`
-/

namespace A342323.P11951927204004561567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342255 (A245300 n + 1).toNat

end

end A342323.P11951927204004561567

/-!
# A342326: a(n) is the smallest nonnegative integer that can be written as a sum of two distinct nonzero triangular numbers in exactly n ways or -1 if no such integer exists.

The programs for A342326, there is no canonical definition to state claims against.
-/

/-! ## A342326.P13435669540751522976

`A008854(Δ[A331157(n)])`
-/

namespace A342326.P13435669540751522976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (f1 (n + 1) - f1 n).toNat

end

end A342326.P13435669540751522976

/-!
# A342334: Number of compositions of n with all adjacent parts (x, y) satisfying x >= 2y or y > 2x.

The programs for A342334, there is no canonical definition to state claims against.
-/

/-! ## A342334.P1402258521130072631

`A115871(A102462(n))`
-/

namespace A342334.P1402258521130072631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A102462 n).toNat

end

end A342334.P1402258521130072631

/-! ## A342334.P13571322085602703609

`A096532(A374762(n))`
-/

namespace A342334.P13571322085602703609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (A374762 n).toNat

end

end A342334.P13571322085602703609

/-! ## A342334.P16483667230236979501

`A067029(A176631(n))+A025049(n)`
-/

namespace A342334.P16483667230236979501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A176631 n).toNat + A025049 n

end

end A342334.P16483667230236979501

/-! ## A342334.P9454922775943568831

`A260094(A129455(n))+A025049(n)`
-/

namespace A342334.P9454922775943568831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260094 (A129455 n).toNat + A025049 n

end

end A342334.P9454922775943568831

/-!
# A342337: Number of integer partitions of n with all adjacent parts (x, y) satisfying either x = y or x = 2y.

The programs for A342337, the canonical program `A342337.P4685969559606466656` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342337 has offset 0).

The definition of A342337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342337.P6001100732448157312

`∑{d}[floor(1/(n+1))+n, A033485(A110654(#))]`
-/

namespace A342337.P6001100732448157312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033485 (A110654 d).toNat

end

end A342337.P6001100732448157312

namespace A342337

/-- `∑{d}[floor(1/(n+1))+n, A033485(A110654(#))]` -/
def P6001100732448157312.Spec : Prop :=
  ∀ n, P6001100732448157312.a n = A342337 n

end A342337

/-! ## A342337.P4685969559606466656

`∑{d}[A028310(n), A033485(A065033(#))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A342337

/-- `∑{d}[A028310(n), A033485(A065033(#))]` -/
def P4685969559606466656.Spec : Prop :=
  ∀ n, P4685969559606466656.a n = A342337 n

theorem P4685969559606466656.correct : P4685969559606466656.Spec := by
  intro n
  simp only [A342337]

end A342337

/-! ## A342337.P4119519106853447708

`∑{d}[A065033(2*n), A033485(A065033(#))]`
-/

namespace A342337.P4119519106853447708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033485 (A065033 d).toNat

end

end A342337.P4119519106853447708

namespace A342337

/-- `∑{d}[A065033(2*n), A033485(A065033(#))]` -/
def P4119519106853447708.Spec : Prop :=
  ∀ n, P4119519106853447708.a n = A342337 n

end A342337

/-!
# A342338: Number of compositions of n with all adjacent parts (x, y) satisfying x < 2y and y <= 2x.

The programs for A342338, there is no canonical definition to state claims against.
-/

/-! ## A342338.P550619642461574960

`A000194(A265385(n+1)+A007661(n))`
-/

namespace A342338.P550619642461574960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A265385 (n + 1) + A007661 n).toNat

end

end A342338.P550619642461574960

/-! ## A342338.P8069399929548488286

`A000196(A304660(n+1)+A129983(n))`
-/

namespace A342338.P8069399929548488286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A304660 (n + 1) + A129983 n).toNat

end

end A342338.P8069399929548488286

/-! ## A342338.P2165470209223244367

`A135665(A323867(n)+A076671(n+1))`
-/

namespace A342338.P2165470209223244367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A323867 n + A076671 (n + 1)).toNat

end

end A342338.P2165470209223244367

/-! ## A342338.P10355044308454494093

`A135665(A323867(n)+A076674(n+1))`
-/

namespace A342338.P10355044308454494093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A323867 n + A076674 (n + 1)).toNat

end

end A342338.P10355044308454494093

/-! ## A342338.P9345627370117075878

`A259361(A362261(n+4)+A036650(n))`
-/

namespace A342338.P9345627370117075878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A362261 (n + 4) + A036650 n).toNat

end

end A342338.P9345627370117075878

/-!
# A342339: Heinz numbers of the integer partitions counted by A342337, which have all adjacent parts (x, y) satisfying either x = y or x = 2y.

The programs for A342339, there is no canonical definition to state claims against.
-/

/-! ## A342339.P8634828175211694611

`∩[A318991(n+1), A342191(n+1)]`
-/

namespace A342339.P8634828175211694611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342339.P8634828175211694611

/-! ## A342339.P5367016869844604814

`eq[A241919(n+1), A243056(A243057(n+1))]+1`
-/

namespace A342339.P5367016869844604814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A243057 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342339.P5367016869844604814

/-! ## A342339.P15669768319840070991

`eq[A000010(A137795(n+1)), A081060(n+1)]+1`
-/

namespace A342339.P15669768319840070991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A137795 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342339.P15669768319840070991

/-! ## A342339.P5434177102963732332

`∪[A000961(n+1), A308561(n+1)]%A308561(2*n+3)`
-/

namespace A342339.P5434177102963732332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308561 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A308561 (2 * n + 3))

end

end A342339.P5434177102963732332

/-!
# A342340: Number of compositions of n where each part after the first is either twice, half, or equal to the prior part.

The programs for A342340, there is no canonical definition to state claims against.
-/

/-! ## A342340.P4344462671640697580

`A298534(A257655(n))`
-/

namespace A342340.P4344462671640697580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (A257655 n).toNat

end

end A342340.P4344462671640697580

/-! ## A342340.P16104542140817873117

`A298534(A318026(n))`
-/

namespace A342340.P16104542140817873117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (A318026 n).toNat

end

end A342340.P16104542140817873117

/-! ## A342340.P7692430753675067570

`A351290(A279786(n))+A236938(n)`
-/

namespace A342340.P7692430753675067570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A279786 n).toNat + A236938 n

end

end A342340.P7692430753675067570

/-! ## A342340.P14315291748106458279

`A345167(A000688(3^n)+1)`
-/

namespace A342340.P14315291748106458279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A000688 (3 ^ n) + 1).toNat

end

end A342340.P14315291748106458279

/-! ## A342340.P9981225496911950524

`A324396(A001681(n))+A003242(n)`
-/

namespace A342340.P9981225496911950524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324396 (A001681 n).toNat + A003242 n

end

end A342340.P9981225496911950524

/-!
# A342343: Number of strict compositions of n with alternating parts strictly decreasing.

The programs for A342343, there is no canonical definition to state claims against.
-/

/-! ## A342343.P16134980487037752421

`A271371(n)+A046951(A011782(n))`
-/

namespace A342343.P16134980487037752421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271371 n + A046951 (A011782 n).toNat

end

end A342343.P16134980487037752421

/-! ## A342343.P3325055743032565854

`A271371(n)+A000120(A152046(n))`
-/

namespace A342343.P3325055743032565854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271371 n + A000120 (A152046 n).toNat

end

end A342343.P3325055743032565854

/-! ## A342343.P5001593847723127059

`A326592(n)+A239086(A333150(n))`
-/

namespace A342343.P5001593847723127059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 n + A239086 (A333150 n).toNat

end

end A342343.P5001593847723127059

/-! ## A342343.P538745646762986113

`A333150(n)+A005136(A185035(n))`
-/

namespace A342343.P538745646762986113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333150 n + A005136 (A185035 n).toNat

end

end A342343.P538745646762986113

/-! ## A342343.P18108313183154846742

`A333150(n)+A289235(A333148(2*n+1))`
-/

namespace A342343.P18108313183154846742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333150 n + A289235 (A333148 (2 * n + 1)).toNat

end

end A342343.P18108313183154846742

/-!
# A342344: Number of parts in the symmetric representation of antisigma(n).

The programs for A342344, there is no canonical definition to state claims against.
-/

/-! ## A342344.P2147044245620490881

`A299090(or(A008618(n), A212107(n)))`
-/

namespace A342344.P2147044245620490881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (Int.lor (A008618 n) (A212107 n)).toNat

end

end A342344.P2147044245620490881

/-! ## A342344.P14394084506552635317

`A023528(A072565(n+1)*A079081(n+1)+1)`
-/

namespace A342344.P14394084506552635317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023528 (A072565 (n + 1) * A079081 (n + 1) + 1).toNat

end

end A342344.P14394084506552635317

/-! ## A342344.P5358688510937992473

`A335124(A316245(n)-A341865(n+1))`
-/

namespace A342344.P5358688510937992473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335124 (A316245 n - A341865 (n + 1)).toNat

end

end A342344.P5358688510937992473

/-! ## A342344.P11059685764566293305

`A051903(∑[A003520(3*n)-A242378(n)])`
-/

namespace A342344.P11059685764566293305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * n) - A242378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342344.P11059685764566293305

/-! ## A342344.P2140332525408094831

`A337137(A337176(3*(n+1)))%A337158(n+1)`
-/

namespace A342344.P2140332525408094831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337137 (A337176 (3 * (n + 1))).toNat) (A337158 (n + 1))

end

end A342344.P2140332525408094831

/-!
# A342345: a(1) = 3, a(n) = smallest palindromic nontrivial multiple of a(n-1) containing all decimal digits of a(n-1).

The programs for A342345, there is no canonical definition to state claims against.
-/

/-! ## A342345.P18436194178270085891

`A342232(n+1)+record[A342233(A011973(n))]`
-/

namespace A342345.P18436194178270085891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342233 (A011973 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342232 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342345.P18436194178270085891

/-!
# A342346: a(1) = 4, a(n) = smallest palindromic nontrivial multiple of a(n-1) containing all decimal digits of a(n-1).

The programs for A342346, there is no canonical definition to state claims against.
-/

/-! ## A342346.P15020003093373281599

`2*A342232(record[A011973(n)])`
-/

namespace A342346.P15020003093373281599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342346.P15020003093373281599

/-!
# A342349: a(n) = p^3 where p is prime and digits of p counted with multiplicity appear in a(n).

The programs for A342349, there is no canonical definition to state claims against.
-/

/-! ## A342349.P9889444260410095182

`p?[A064931(n+1)]^3`
-/

namespace A342349.P9889444260410095182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3

end

end A342349.P9889444260410095182

/-! ## A342349.P10517230473385471260

`A000578(p?[A064931(n+1)])`
-/

namespace A342349.P10517230473385471260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342349.P10517230473385471260

/-! ## A342349.P16826573274125307743

`A005064(p?[A064931(n+1)])`
-/

namespace A342349.P16826573274125307743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342349.P16826573274125307743

/-! ## A342349.P850520019127259045

`A005067(p?[A064931(n+1)])`
-/

namespace A342349.P850520019127259045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342349.P850520019127259045

/-! ## A342349.P18108119809262690645

`A053149(p?[A064931(n+1)])`
-/

namespace A342349.P18108119809262690645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342349.P18108119809262690645

/-!
# A342350: Numbers k such that lcm(1,2,3,...,k)/21 equals the denominator of the k-th harmonic number H(k).

The programs for A342350, the canonical program `A342350.P14229369727761926340` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342350 has offset 1).

The definition of A342350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342350.P14229369727761926340

`A139506(gcd(n, n+1)+1)^3+n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A342350

/-- `A139506(gcd(n, n+1)+1)^3+n` -/
def P14229369727761926340.Spec : Prop :=
  ∀ n, P14229369727761926340.a n = A342350 (n + 1)

theorem P14229369727761926340.correct : P14229369727761926340.Spec := by
  intro n
  simp only [A342350, Nat.add_sub_cancel]

end A342350

/-!
# A342351: Numbers k such that lcm(1,2,3,...,k)/23 equals the denominator of the k-th harmonic number H(k).

The programs for A342351, there is no canonical definition to state claims against.
-/

/-! ## A342351.P10465649350270952117

`(30/2+94)²+A061395(A001248(n+1))-1`
-/

namespace A342351.P10465649350270952117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 : ℚ) / 2 + 94) ^ 2 + (A061395 (A001248 (n + 1)).toNat - 1 : ℚ)

end

end A342351.P10465649350270952117

/-! ## A342351.P3140015641516246742

`A146332(A151934(n)!-log2(1/2))²+n`
-/

namespace A342351.P3140015641516246742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (SequenceMachineLib.roundAway ((Nat.factorial (A151934 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2 + (n : ℤ)

end

end A342351.P3140015641516246742

/-! ## A342351.P13032284046392807548

`A337853(A337854(n))+(30/2+94)²`
-/

namespace A342351.P13032284046392807548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337853 (A337854 n).toNat : ℚ) + ((30 : ℚ) / 2 + 94) ^ 2

end

end A342351.P13032284046392807548

/-! ## A342351.P4059554257277914776

`A139971(ceil(1/A193952(n))+1)²+n`
-/

namespace A342351.P4059554257277914776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (⌈1 / (A193952 n : ℚ)⌉ + 1).toNat ^ 2 + (n : ℤ)

end

end A342351.P4059554257277914776

/-!
# A342352: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^2/2 - x - 1).

The programs for A342352, the canonical program `A342352.P2992290388896891854` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342352 has offset 0).

The definition of A342352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342352.P2992290388896891854

`ogf((4x^4-5x^5+2x^6)/(1-5x+9x^2-7x^3+2x^4))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342352

/-- `ogf((4x^4-5x^5+2x^6)/(1-5x+9x^2-7x^3+2x^4))` -/
def P2992290388896891854.Spec : Prop :=
  ∀ n, P2992290388896891854.a n = A342352 n

theorem P2992290388896891854.correct : P2992290388896891854.Spec := by
  intro n
  simp only [A342352]

end A342352

/-! ## A342352.P15741717963141626549

`xor(2^n-1, ∑[char[3]+n])`
-/

namespace A342352.P15741717963141626549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342352.P15741717963141626549

namespace A342352

/-- `xor(2^n-1, ∑[char[3]+n])` -/
def P15741717963141626549.Spec : Prop :=
  ∀ n, P15741717963141626549.a n = A342352 n

end A342352

/-! ## A342352.P850831173267623020

`A000225(n)-∑[char[3]+n]`
-/

namespace A342352.P850831173267623020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342352.P850831173267623020

namespace A342352

/-- `A000225(n)-∑[char[3]+n]` -/
def P850831173267623020.Spec : Prop :=
  ∀ n, P850831173267623020.a n = A342352 n

end A342352

/-! ## A342352.P8698077950668085046

`∑[A131577(n)-char[3]-n]`
-/

namespace A342352.P8698077950668085046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342352.P8698077950668085046

namespace A342352

/-- `∑[A131577(n)-char[3]-n]` -/
def P8698077950668085046.Spec : Prop :=
  ∀ n, P8698077950668085046.a n = A342352 n

end A342352

/-! ## A342352.P16768671783637551375

`2^n-(∑[n]+1)-log2(A211662(n+6))`
-/

namespace A342352.P16768671783637551375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) : ℝ) - Real.logb 2 (A211662 (n + 6) : ℝ)

end

end A342352.P16768671783637551375

namespace A342352

/-- `2^n-(∑[n]+1)-log2(A211662(n+6))` -/
def P16768671783637551375.Spec : Prop :=
  ∀ n, P16768671783637551375.a n = (A342352 n : ℝ)

end A342352

/-! ## A342352.P5788342439452332931

`A014833(n)-A329683(n)`
-/

namespace A342352.P5788342439452332931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 n - A329683 n

end

end A342352.P5788342439452332931

namespace A342352

/-- `A014833(n)-A329683(n)` -/
def P5788342439452332931.Spec : Prop :=
  ∀ n, P5788342439452332931.a n = A342352 n

end A342352

/-! ## A342352.P10878956096041233773

`A296965(n)-A186783(n+1)`
-/

namespace A342352.P10878956096041233773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n - A186783 (n + 1)

end

end A342352.P10878956096041233773

namespace A342352

/-- `A296965(n)-A186783(n+1)` -/
def P10878956096041233773.Spec : Prop :=
  ∀ n, P10878956096041233773.a n = A342352 n

end A342352

/-! ## A342352.P3246286826977611743

`A014833(n)-A000005(A172170(n))`
-/

namespace A342352.P3246286826977611743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 n - A000005 (A172170 n).toNat

end

end A342352.P3246286826977611743

namespace A342352

/-- `A014833(n)-A000005(A172170(n))` -/
def P3246286826977611743.Spec : Prop :=
  ∀ n, P3246286826977611743.a n = A342352 n

end A342352

/-! ## A342352.P4752620206852920266

`A342379(n+1)-A002663(n)`
-/

namespace A342352.P4752620206852920266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342379 (n + 1) - A002663 n

end

end A342352.P4752620206852920266

namespace A342352

/-- `A342379(n+1)-A002663(n)` -/
def P4752620206852920266.Spec : Prop :=
  ∀ n, P4752620206852920266.a n = A342352 n

end A342352

/-! ## A342352.P12879087940060949180

`A342379(n+1)+A000125(n)-A000079(n)`
-/

namespace A342352.P12879087940060949180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342379 (n + 1) + (A000125 n - A000079 n)

end

end A342352.P12879087940060949180

namespace A342352

/-- `A342379(n+1)+A000125(n)-A000079(n)` -/
def P12879087940060949180.Spec : Prop :=
  ∀ n, P12879087940060949180.a n = A342352 n

end A342352

/-! ## A342352.P4870837507935788410

`A342379(n+1)+A002664(n)-A002664(n+1)`
-/

namespace A342352.P4870837507935788410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342379 (n + 1) + (A002664 n - A002664 (n + 1))

end

end A342352.P4870837507935788410

namespace A342352

/-- `A342379(n+1)+A002664(n)-A002664(n+1)` -/
def P4870837507935788410.Spec : Prop :=
  ∀ n, P4870837507935788410.a n = A342352 n

end A342352

/-!
# A342353: Number of ways to choose 3 points that form an equilateral triangle from the A001845(n) points in a regular octahedral grid of size n.

The programs for A342353, there is no canonical definition to state claims against.
-/

/-! ## A342353.P4392915832480756065

`A004524(A072873(n+2)*A241451(2*(n+1)))`
-/

namespace A342353.P4392915832480756065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A072873 (n + 2) * A241451 (2 * (n + 1))).toNat

end

end A342353.P4392915832480756065

/-!
# A342354: M(n,k) = 2*n^2 + 2*k + 1 for 0 <= k <= n and M(n,k) = 2*k^2 + 4*k - 2*n + 1 for 0 <= n <= k; square array M(n,k) read by ascending antidiagonals (n, k >= 0).

The programs for A342354, there is no canonical definition to state claims against.
-/

/-! ## A342354.P8101500730414392566

`2*A220508(n)+1`
-/

namespace A342354.P8101500730414392566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220508 n + 1

end

end A342354.P8101500730414392566

/-! ## A342354.P5629827729540652062

`2*A060736(n+1)-1`
-/

namespace A342354.P5629827729540652062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060736 (n + 1) - 1

end

end A342354.P5629827729540652062

/-! ## A342354.P6719312523071566628

`A005408(A220508(n))`
-/

namespace A342354.P6719312523071566628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A220508 n).toNat

end

end A342354.P6719312523071566628

/-! ## A342354.P263110156823814347

`A004273(A060736(n+1))`
-/

namespace A342354.P263110156823814347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A060736 (n + 1)).toNat

end

end A342354.P263110156823814347

/-! ## A342354.P5726566480890701812

`A004273(A220508(n)+1)`
-/

namespace A342354.P5726566480890701812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A220508 n + 1).toNat

end

end A342354.P5726566480890701812

/-! ## A342354.P17431402210305212446

`A060747(A220508(n)+1)`
-/

namespace A342354.P17431402210305212446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A220508 n + 1).toNat

end

end A342354.P17431402210305212446

/-! ## A342354.P16529698696826597341

`A176271(A220508(n)+1)`
-/

namespace A342354.P16529698696826597341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176271 (A220508 n + 1).toNat

end

end A342354.P16529698696826597341

/-! ## A342354.P7595345673936872278

`A004442(2*A220508(n))`
-/

namespace A342354.P7595345673936872278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A220508 n).toNat

end

end A342354.P7595345673936872278

/-! ## A342354.P6494073671511501112

`A097062(2*A220508(n))`
-/

namespace A342354.P6494073671511501112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (2 * A220508 n).toNat

end

end A342354.P6494073671511501112

/-! ## A342354.P15799024260162479652

`A118402(2*A220508(n))`
-/

namespace A342354.P15799024260162479652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118402 (2 * A220508 n).toNat

end

end A342354.P15799024260162479652

/-!
# A342357: Number of fundamentally different rainbow graceful labelings of graphs with n edges.

The programs for A342357, there is no canonical definition to state claims against.
-/

/-! ## A342357.P14175886601947701460

`A309256(A183069(n+1)+2)`
-/

namespace A342357.P14175886601947701460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309256 (A183069 (n + 1) + 2).toNat

end

end A342357.P14175886601947701460

/-!
# A342358: Balanced numbers (A020492) that are also arithmetic numbers (A003601) and harmonic numbers (A001599).

The programs for A342358, there is no canonical definition to state claims against.
-/

/-! ## A342358.P1584824096764097829

`∩[A001599(n+1), A020492(n+1)]`
-/

namespace A342358.P1584824096764097829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342358.P1584824096764097829

/-! ## A342358.P561379552235257662

`A335317(A018301(n+1)*A319861(n))`
-/

namespace A342358.P561379552235257662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335317 (A018301 (n + 1) * A319861 n).toNat

end

end A342358.P561379552235257662

/-! ## A342358.P15026000819579796549

`A335317(C(A018301(n+1), A146766(n)))`
-/

namespace A342358.P15026000819579796549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335317 (Nat.choose (A018301 (n + 1)).toNat (A146766 n).toNat)

end

end A342358.P15026000819579796549

/-!
# A342362: Expansion of the o.g.f. (1 + 8*x + 10*x^2 + 8*x^3 + x^4)/((1 - x)^4*(1 + x)^2).

The programs for A342362, the canonical program `A342362.P8614726883179628841` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342362 has offset 0).

The definition of A342362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+8x+10x^2+8x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` (program `A342362.P8614726883179628841`, by `A342362.P8614726883179628841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342362.P8614726883179628841

`ogf((1+8x+10x^2+8x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342362

/-- `ogf((1+8x+10x^2+8x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P8614726883179628841.Spec : Prop :=
  ∀ n, P8614726883179628841.a n = A342362 n

theorem P8614726883179628841.correct : P8614726883179628841.Spec := by
  intro n
  simp only [A342362]

end A342362

/-! ## A342362.P13704662063791997199

`(n+1)*(14*(n+1)²-3*(-1)^n+1)/12`
-/

namespace A342362.P13704662063791997199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((14 * (n + 1) ^ 2 : ℤ) - 3 * (-1) ^ n + 1) : ℚ) / 12

end

end A342362.P13704662063791997199

namespace A342362

/-- `(n+1)*(14*(n+1)²-3*(-1)^n+1)/12` -/
def P13704662063791997199.Spec : Prop :=
  ∀ n, P13704662063791997199.a n = (A342362 n : ℚ)

end A342362

/-! ## A342362.P2117304350726594978

`(n+1)/4*(5-(-1)^n)-7*C(n+2, 2)+7*C(n+3, 3)`
-/

namespace A342362.P2117304350726594978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (5 - (-1) ^ n : ℚ) - (7 * Nat.choose (n + 2) 2 : ℚ) + (7 * Nat.choose (n + 3) 3 : ℚ)

end

end A342362.P2117304350726594978

namespace A342362

/-- `(n+1)/4*(5-(-1)^n)-7*C(n+2, 2)+7*C(n+3, 3)` -/
def P2117304350726594978.Spec : Prop :=
  ∀ n, P2117304350726594978.a n = (A342362 n : ℚ)

end A342362

/-! ## A342362.P8633398770348692990

`∑[∑[(n%2+3)*2*n]+1]`
-/

namespace A342362.P8633398770348692990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 3) * (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342362.P8633398770348692990

namespace A342362

/-- `∑[∑[(n%2+3)*2*n]+1]` -/
def P8633398770348692990.Spec : Prop :=
  ∀ n, (P8633398770348692990.a n : ℤ) = A342362 n

end A342362

/-! ## A342362.P11533495162847017763

`∑[2*∑[and(1, n)]²]+(n+1)^3`
-/

namespace A342362.P11533495162847017763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A342362.P11533495162847017763

namespace A342362

/-- `∑[2*∑[and(1, n)]²]+(n+1)^3` -/
def P11533495162847017763.Spec : Prop :=
  ∀ n, (P11533495162847017763.a n : ℤ) = A342362 n

end A342362

/-! ## A342362.P825910109419465200

`∑[A319384(n)+∑[4*n]]`
-/

namespace A342362.P825910109419465200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342362.P825910109419465200

namespace A342362

/-- `∑[A319384(n)+∑[4*n]]` -/
def P825910109419465200.Spec : Prop :=
  ∀ n, P825910109419465200.a n = A342362 n

end A342362

/-! ## A342362.P12579777260717675590

`A138179(n+1)+∑[2*n²]`
-/

namespace A342362.P12579777260717675590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138179 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342362.P12579777260717675590

namespace A342362

/-- `A138179(n+1)+∑[2*n²]` -/
def P12579777260717675590.Spec : Prop :=
  ∀ n, P12579777260717675590.a n = A342362 n

end A342362

/-! ## A342362.P11521361209666709670

`A074149(n+1)+∑[∑[4*n]]`
-/

namespace A342362.P11521361209666709670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342362.P11521361209666709670

namespace A342362

/-- `A074149(n+1)+∑[∑[4*n]]` -/
def P11521361209666709670.Spec : Prop :=
  ∀ n, P11521361209666709670.a n = A342362 n

end A342362

/-! ## A342362.P8746806604023035786

`∑[A001844(n)+∑[2*lcm(2, n)]]`
-/

namespace A342362.P8746806604023035786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342362.P8746806604023035786

namespace A342362

/-- `∑[A001844(n)+∑[2*lcm(2, n)]]` -/
def P8746806604023035786.Spec : Prop :=
  ∀ n, P8746806604023035786.a n = A342362 n

end A342362

/-! ## A342362.P10951116197135519360

`A265225(n)+A255687(n)`
-/

namespace A342362.P10951116197135519360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n + A255687 n

end

end A342362.P10951116197135519360

namespace A342362

/-- `A265225(n)+A255687(n)` -/
def P10951116197135519360.Spec : Prop :=
  ∀ n, P10951116197135519360.a n = A342362 n

end A342362

/-! ## A342362.P5796522399180949270

`∑[A074378(n)+A005891(n)]`
-/

namespace A342362.P5796522399180949270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 n + A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342362.P5796522399180949270

namespace A342362

/-- `∑[A074378(n)+A005891(n)]` -/
def P5796522399180949270.Spec : Prop :=
  ∀ n, P5796522399180949270.a n = A342362 n

end A342362

/-! ## A342362.P8328027214706747287

`A100182(n+1)+A093353(n)`
-/

namespace A342362.P8328027214706747287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100182 (n + 1) + A093353 n

end

end A342362.P8328027214706747287

namespace A342362

/-- `A100182(n+1)+A093353(n)` -/
def P8328027214706747287.Spec : Prop :=
  ∀ n, P8328027214706747287.a n = A342362 n

end A342362

/-! ## A342362.P18329591188449965566

`A210440(n)+A074149(n+1)`
-/

namespace A342362.P18329591188449965566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A074149 (n + 1)

end

end A342362.P18329591188449965566

namespace A342362

/-- `A210440(n)+A074149(n+1)` -/
def P18329591188449965566.Spec : Prop :=
  ∀ n, P18329591188449965566.a n = A342362 n

end A342362

/-! ## A342362.P16380520555564176947

`A245301(n)+A110349(n+1)`
-/

namespace A342362.P16380520555564176947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n + A110349 (n + 1)

end

end A342362.P16380520555564176947

namespace A342362

/-- `A245301(n)+A110349(n+1)` -/
def P16380520555564176947.Spec : Prop :=
  ∀ n, P16380520555564176947.a n = A342362 n

end A342362

/-! ## A342362.P5647426580892409648

`A352116(n+1)+A212976(n)`
-/

namespace A342362.P5647426580892409648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352116 (n + 1) + A212976 n

end

end A342362.P5647426580892409648

namespace A342362

/-- `A352116(n+1)+A212976(n)` -/
def P5647426580892409648.Spec : Prop :=
  ∀ n, P5647426580892409648.a n = A342362 n

end A342362

/-! ## A342362.P10250360706199021611

`A352115(n)+A317614(n+1)`
-/

namespace A342362.P10250360706199021611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352115 n + A317614 (n + 1)

end

end A342362.P10250360706199021611

namespace A342362

/-- `A352115(n)+A317614(n+1)` -/
def P10250360706199021611.Spec : Prop :=
  ∀ n, P10250360706199021611.a n = A342362 n

end A342362

/-! ## A342362.P574617838861438412

`∑[A062717(n+1)+A001844(n)]`
-/

namespace A342362.P574617838861438412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1) + A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342362.P574617838861438412

namespace A342362

/-- `∑[A062717(n+1)+A001844(n)]` -/
def P574617838861438412.Spec : Prop :=
  ∀ n, P574617838861438412.a n = A342362 n

end A342362

/-! ## A342362.P2455783884215884807

`∑[A069099(n+1)+A001057(n)]`
-/

namespace A342362.P2455783884215884807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) + A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342362.P2455783884215884807

namespace A342362

/-- `∑[A069099(n+1)+A001057(n)]` -/
def P2455783884215884807.Spec : Prop :=
  ∀ n, P2455783884215884807.a n = A342362 n

end A342362

/-! ## A342362.P15739841481825728983

`A168388(n+1)+A068601(n+1)`
-/

namespace A342362.P15739841481825728983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (n + 1) + A068601 (n + 1)

end

end A342362.P15739841481825728983

namespace A342362

/-- `A168388(n+1)+A068601(n+1)` -/
def P15739841481825728983.Spec : Prop :=
  ∀ n, P15739841481825728983.a n = A342362 n

end A342362

/-! ## A342362.P13707279185699349966

`2*A061349(n+1)-(n+1)`
-/

namespace A342362.P13707279185699349966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061349 (n + 1) - (n + 1 : ℤ)

end

end A342362.P13707279185699349966

namespace A342362

/-- `2*A061349(n+1)-(n+1)` -/
def P13707279185699349966.Spec : Prop :=
  ∀ n, P13707279185699349966.a n = A342362 n

end A342362

/-!
# A342363: First differences of A341282.

The programs for A342363, there is no canonical definition to state claims against.
-/

/-! ## A342363.P18279165644349858472

`A341282(n+2)-A341282(n+1)`
-/

namespace A342363.P18279165644349858472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341282 (n + 2) - A341282 (n + 1)

end

end A342363.P18279165644349858472

/-! ## A342363.P5629061745948678185

`Δ[A341282(n+1)]`
-/

namespace A342363.P5629061745948678185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342363.P5629061745948678185

/-! ## A342363.P10517300134036654976

`Δ[lt[A341281(n+1), 1]]`
-/

namespace A342363.P10517300134036654976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342363.P10517300134036654976

/-! ## A342363.P2890900795216486585

`Δ[A020725(eq[0, A341281(n+1)])]`
-/

namespace A342363.P2890900795216486585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342363.P2890900795216486585

/-! ## A342363.P1122888307718170457

`Δ[eq[0, A341281(A233583(n+1))]]`
-/

namespace A342363.P1122888307718170457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (A233583 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342363.P1122888307718170457

/-! ## A342363.P12268369365030882330

`Δ[eq[0, A341281(A060000(n+1))]]`
-/

namespace A342363.P12268369365030882330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (A060000 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342363.P12268369365030882330

/-!
# A342364: The primes associated with A239727.

The programs for A342364, there is no canonical definition to state claims against.
-/

/-! ## A342364.P3114310798975919198

`2*A239727(n+1)*A239746(n+1)+1`
-/

namespace A342364.P3114310798975919198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239727 (n + 1) * A239746 (n + 1) + 1

end

end A342364.P3114310798975919198

/-! ## A342364.P2326829631598503108

`A342365(A239746(n+1))`
-/

namespace A342364.P2326829631598503108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342365 (A239746 (n + 1)).toNat

end

end A342364.P2326829631598503108

/-! ## A342364.P17559810234755110014

`A070846(A239727(n+1))`
-/

namespace A342364.P17559810234755110014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A239727 (n + 1)).toNat

end

end A342364.P17559810234755110014

/-! ## A342364.P4604445820535445021

`A034694(2*A239727(n+1))`
-/

namespace A342364.P4604445820535445021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (2 * A239727 (n + 1)).toNat

end

end A342364.P4604445820535445021

/-! ## A342364.P7528302049794153497

`A086507(2*A239727(n+1))`
-/

namespace A342364.P7528302049794153497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (2 * A239727 (n + 1)).toNat

end

end A342364.P7528302049794153497

/-!
# A342365: The primes associated with A239800 (1 if A239800(n) = 0).

The programs for A342365, there is no canonical definition to state claims against.
-/

/-! ## A342365.P3099955902842178865

`2*(n+1)*A239800(n+1)+1`
-/

namespace A342365.P3099955902842178865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A239800 (n + 1) + 1

end

end A342365.P3099955902842178865

/-! ## A342365.P13196310393244870614

`A239800(n+1)*A317440(n+1)+1`
-/

namespace A342365.P13196310393244870614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239800 (n + 1) * A317440 (n + 1) + 1

end

end A342365.P13196310393244870614

/-! ## A342365.P12335169191629025444

`A070846(A239800(n+1))`
-/

namespace A342365.P12335169191629025444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A239800 (n + 1)).toNat

end

end A342365.P12335169191629025444

/-! ## A342365.P15717247464332354476

`A034694(2*A239800(n+1))`
-/

namespace A342365.P15717247464332354476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (2 * A239800 (n + 1)).toNat

end

end A342365.P15717247464332354476

/-! ## A342365.P3552624244906557101

`A086507(2*A239800(n+1))`
-/

namespace A342365.P3552624244906557101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (2 * A239800 (n + 1)).toNat

end

end A342365.P3552624244906557101

/-!
# A342366: a(1) = 1, a(2) = 2; for n > 2, a(n) is the least positive integer not occurring earlier that shares a factor but not a digit with a(n-1).

The programs for A342366, there is no canonical definition to state claims against.
-/

/-! ## A342366.P779415040153708779

`A336946(A043318(n+1)%A342371(n))`
-/

namespace A342366.P779415040153708779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336946 (Int.tmod (A043318 (n + 1)) (A342371 n)).toNat

end

end A342366.P779415040153708779

/-!
# A342368: Fundamental discriminants of real quadratic number fields with odd class number > 1.

The programs for A342368, there is no canonical definition to state claims against.
-/

/-! ## A342368.P8450426529855420416

`∪[A349419(n+1), A350165(n+1)]`
-/

namespace A342368.P8450426529855420416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342368.P8450426529855420416

/-!
# A342369: If n is congruent to 2 (mod 3), then a(n) = (2*n - 1)/3; otherwise, a(n) = 2*n.

The programs for A342369, the canonical program `A342369.P7634135396147307125` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342369 has offset 0).

The definition of A342369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342369.P10945197460610976155

`ogf((2x+x^2+6x^3+4x^4+x^5)/(1-2x^3+x^6))`
-/

namespace A342369.P10945197460610976155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 6, 4, 1] [1, 0, 0, -2, 0, 0, 1] n

end

end A342369.P10945197460610976155

namespace A342369

/-- `ogf((2x+x^2+6x^3+4x^4+x^5)/(1-2x^3+x^6))` -/
def P10945197460610976155.Spec : Prop :=
  ∀ n, P10945197460610976155.a n = A342369 n

end A342369

/-! ## A342369.P7634135396147307125

`14*n-2*a(n-1)-3*a(n-2)-2*a(n-3)-a(n-4)-29` with `a(0)=0, a(1)=2, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342369

/-- `14*n-2*a(n-1)-3*a(n-2)-2*a(n-3)-a(n-4)-29` -/
def P7634135396147307125.Spec : Prop :=
  ∀ n, P7634135396147307125.a n = A342369 n

theorem P7634135396147307125.correct : P7634135396147307125.Spec := by
  intro n
  simp only [A342369]

end A342369

/-! ## A342369.P6666108013976240923

`(A093544(n+1)-1)/2`
-/

namespace A342369.P6666108013976240923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093544 (n + 1) - 1 : ℚ) / 2

end

end A342369.P6666108013976240923

namespace A342369

/-- `(A093544(n+1)-1)/2` -/
def P6666108013976240923.Spec : Prop :=
  ∀ n, P6666108013976240923.a n = (A342369 n : ℚ)

theorem P6666108013976240923.correct : P6666108013976240923.Spec := by
  intro n
  simp only [A342369, Nat.add_sub_cancel, A342369.P6666108013976240923.a, A342369.P7634135396147307125.a, A093544, A093544.P14062098747140646535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342369

/-! ## A342369.P8169424053832280282

`A093545(n)+floor((1+A093545(n))/5)`
-/

namespace A342369.P8169424053832280282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 n + ⌊(1 + A093545 n : ℚ) / 5⌋

end

end A342369.P8169424053832280282

namespace A342369

/-- `A093545(n)+floor((1+A093545(n))/5)` -/
def P8169424053832280282.Spec : Prop :=
  ∀ n, P8169424053832280282.a n = A342369 n

end A342369

/-! ## A342369.P6023276673429288987

`floor(2*n/gcd(3, n+1))`
-/

namespace A342369.P6023276673429288987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / (Nat.gcd 3 (n + 1) : ℚ))⌋

end

end A342369.P6023276673429288987

namespace A342369

/-- `floor(2*n/gcd(3, n+1))` -/
def P6023276673429288987.Spec : Prop :=
  ∀ n, P6023276673429288987.a n = A342369 n

end A342369

/-! ## A342369.P5402806519732086315

`floor(2*n/or(1, n%3))`
-/

namespace A342369.P5402806519732086315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (Nat.lor 1 (n % 3) : ℚ)⌋

end

end A342369.P5402806519732086315

namespace A342369

/-- `floor(2*n/or(1, n%3))` -/
def P5402806519732086315.Spec : Prop :=
  ∀ n, P5402806519732086315.a n = A342369 n

end A342369

/-! ## A342369.P2971375462370820528

`floor(2*n/gcd(6, 1-2*n))`
-/

namespace A342369.P2971375462370820528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (Int.gcd 6 (1 - (2 * n : ℤ)) : ℚ)⌋

end

end A342369.P2971375462370820528

namespace A342369

/-- `floor(2*n/gcd(6, 1-2*n))` -/
def P2971375462370820528.Spec : Prop :=
  ∀ n, P2971375462370820528.a n = A342369 n

end A342369

/-! ## A342369.P17041129951074176356

`round(2*n/sqrt(gcd(9, (n+1)²)))`
-/

namespace A342369.P17041129951074176356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / Real.sqrt (Nat.gcd 9 ((n + 1) ^ 2) : ℝ))

end

end A342369.P17041129951074176356

namespace A342369

/-- `round(2*n/sqrt(gcd(9, (n+1)²)))` -/
def P17041129951074176356.Spec : Prop :=
  ∀ n, P17041129951074176356.a n = A342369 n

end A342369

/-! ## A342369.P17598358326615511893

`floor(2*n/sqrt(dr((n+1)^6)))`
-/

namespace A342369.P17598358326615511893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.sqrt (SequenceMachineLib.digitalRoot ((n + 1) ^ 6 : ℤ) : ℝ)⌋

end

end A342369.P17598358326615511893

namespace A342369

/-- `floor(2*n/sqrt(dr((n+1)^6)))` -/
def P17598358326615511893.Spec : Prop :=
  ∀ n, P17598358326615511893.a n = A342369 n

end A342369

/-! ## A342369.P10168956591142598236

`round(2*n/sqrt(dr((n+1)^6)))`
-/

namespace A342369.P10168956591142598236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / Real.sqrt (SequenceMachineLib.digitalRoot ((n + 1) ^ 6 : ℤ) : ℝ))

end

end A342369.P10168956591142598236

namespace A342369

/-- `round(2*n/sqrt(dr((n+1)^6)))` -/
def P10168956591142598236.Spec : Prop :=
  ∀ n, P10168956591142598236.a n = A342369 n

end A342369

/-! ## A342369.P15912290141025920111

`(2*n)%(lcm(3, n+1)/3+n)`
-/

namespace A342369.P15912290141025920111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (SequenceMachineLib.roundAway ((Nat.lcm 3 (n + 1) : ℚ) / 3 + (n : ℚ)))

end

end A342369.P15912290141025920111

namespace A342369

/-- `(2*n)%(lcm(3, n+1)/3+n)` -/
def P15912290141025920111.Spec : Prop :=
  ∀ n, P15912290141025920111.a n = A342369 n

end A342369

/-! ## A342369.P3868483671692918496

`(2*n)%A377226(n)`
-/

namespace A342369.P3868483671692918496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A377226 n)

end

end A342369.P3868483671692918496

namespace A342369

/-- `(2*n)%A377226(n)` -/
def P3868483671692918496.Spec : Prop :=
  ∀ n, P3868483671692918496.a n = A342369 n

end A342369

/-! ## A342369.P8368716343363728222

`A247608(n)%A016813(n)`
-/

namespace A342369.P8368716343363728222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247608 n) (A016813 n)

end

end A342369.P8368716343363728222

namespace A342369

/-- `A247608(n)%A016813(n)` -/
def P8368716343363728222.Spec : Prop :=
  ∀ n, P8368716343363728222.a n = A342369 n

end A342369

/-! ## A342369.P15066950541014907251

`A014682(A093544(n+1)-1)`
-/

namespace A342369.P15066950541014907251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093544 (n + 1) - 1).toNat

end

end A342369.P15066950541014907251

namespace A342369

/-- `A014682(A093544(n+1)-1)` -/
def P15066950541014907251.Spec : Prop :=
  ∀ n, P15066950541014907251.a n = A342369 n

end A342369

/-! ## A342369.P5547776041018469691

`A138750(n)+A024164(n+1)`
-/

namespace A342369.P5547776041018469691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138750 n + A024164 (n + 1)

end

end A342369.P5547776041018469691

namespace A342369

/-- `A138750(n)+A024164(n+1)` -/
def P5547776041018469691.Spec : Prop :=
  ∀ n, P5547776041018469691.a n = A342369 n

end A342369

/-! ## A342369.P14088977886528940126

`A004277(n)%A093544(n+1)`
-/

namespace A342369.P14088977886528940126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 n) (A093544 (n + 1))

end

end A342369.P14088977886528940126

namespace A342369

/-- `A004277(n)%A093544(n+1)` -/
def P14088977886528940126.Spec : Prop :=
  ∀ n, P14088977886528940126.a n = A342369 n

end A342369

/-! ## A342369.P15572044077100866352

`A005843(n)%A093544(n+1)`
-/

namespace A342369.P15572044077100866352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) (A093544 (n + 1))

end

end A342369.P15572044077100866352

namespace A342369

/-- `A005843(n)%A093544(n+1)` -/
def P15572044077100866352.Spec : Prop :=
  ∀ n, P15572044077100866352.a n = A342369 n

end A342369

/-! ## A342369.P13466118256016291312

`A016921(n)%A093544(n+1)`
-/

namespace A342369.P13466118256016291312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016921 n) (A093544 (n + 1))

end

end A342369.P13466118256016291312

namespace A342369

/-- `A016921(n)%A093544(n+1)` -/
def P13466118256016291312.Spec : Prop :=
  ∀ n, P13466118256016291312.a n = A342369 n

end A342369

/-! ## A342369.P346863956872633116

`A017293(n)%A093544(n+1)`
-/

namespace A342369.P346863956872633116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017293 n) (A093544 (n + 1))

end

end A342369.P346863956872633116

namespace A342369

/-- `A017293(n)%A093544(n+1)` -/
def P346863956872633116.Spec : Prop :=
  ∀ n, P346863956872633116.a n = A342369 n

end A342369

/-! ## A342369.P10837506540233876736

`A028993(n)%A093544(n+1)`
-/

namespace A342369.P10837506540233876736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028993 n) (A093544 (n + 1))

end

end A342369.P10837506540233876736

namespace A342369

/-- `A028993(n)%A093544(n+1)` -/
def P10837506540233876736.Spec : Prop :=
  ∀ n, P10837506540233876736.a n = A342369 n

end A342369

/-!
# A342370: a(n) = Sum_{k=1..n} gcd(k,n)^(k-1).

The programs for A342370, the canonical program `A342370.P813901618730322866` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342370 has offset 1).

The definition of A342370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd(#+1, n+1)^#]` (program `A342370.P813901618730322866`, by `A342370.P813901618730322866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342370.P813901618730322866

`∑{#}[n, gcd(#+1, n+1)^#]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342370

/-- `∑{#}[n, gcd(#+1, n+1)^#]` -/
def P813901618730322866.Spec : Prop :=
  ∀ n, (P813901618730322866.a n : ℤ) = A342370 (n + 1)

theorem P813901618730322866.correct : P813901618730322866.Spec := by
  intro n
  simp only [A342370, Nat.add_sub_cancel]

end A342370

/-! ## A342370.P11401114599068170887

`A342394(n+1)+A270890(A342318(n))`
-/

namespace A342370.P11401114599068170887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342394 (n + 1) + A270890 (A342318 n).toNat

end

end A342370.P11401114599068170887

namespace A342370

/-- `A342394(n+1)+A270890(A342318(n))` -/
def P11401114599068170887.Spec : Prop :=
  ∀ n, P11401114599068170887.a n = A342370 (n + 1)

end A342370

/-! ## A342370.P14329641414638145037

`A342436(n+1)-A324688(A342318(n))`
-/

namespace A342370.P14329641414638145037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342436 (n + 1) - A324688 (A342318 n).toNat

end

end A342370.P14329641414638145037

namespace A342370

/-- `A342436(n+1)-A324688(A342318(n))` -/
def P14329641414638145037.Spec : Prop :=
  ∀ n, P14329641414638145037.a n = A342370 (n + 1)

end A342370

/-!
# A342371: Partial sums of A051697.

The programs for A342371, the canonical program `A342371.P8988562395477519524` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342371 has offset 0).

The definition of A342371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342371.P8988562395477519524

`a(n-1)+A051697(n)` with `a(0)=2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342371

/-- `a(n-1)+A051697(n)` -/
def P8988562395477519524.Spec : Prop :=
  ∀ n, P8988562395477519524.a n = A342371 n

theorem P8988562395477519524.correct : P8988562395477519524.Spec := by
  intro n
  simp only [A342371]

end A342371

/-! ## A342371.P18401164813639839176

`∑[A051697(n)]`
-/

namespace A342371.P18401164813639839176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P18401164813639839176

namespace A342371

/-- `∑[A051697(n)]` -/
def P18401164813639839176.Spec : Prop :=
  ∀ n, P18401164813639839176.a n = A342371 n

end A342371

/-! ## A342371.P9572770701872161513

`∑[A051698(A014683(A028310(n)))]`
-/

namespace A342371.P9572770701872161513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A014683 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P9572770701872161513

namespace A342371

/-- `∑[A051698(A014683(A028310(n)))]` -/
def P9572770701872161513.Spec : Prop :=
  ∀ n, P9572770701872161513.a n = A342371 n

end A342371

/-! ## A342371.P10401798039155460509

`∑[A051698(char[A051698(n)]+n)]`
-/

namespace A342371.P10401798039155460509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P10401798039155460509

namespace A342371

/-- `∑[A051698(char[A051698(n)]+n)]` -/
def P10401798039155460509.Spec : Prop :=
  ∀ n, P10401798039155460509.a n = A342371 n

end A342371

/-! ## A342371.P6393902245907545546

`∑[A076973(A004281(n))]`
-/

namespace A342371.P6393902245907545546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P6393902245907545546

namespace A342371

/-- `∑[A076973(A004281(n))]` -/
def P6393902245907545546.Spec : Prop :=
  ∀ n, P6393902245907545546.a n = A342371 n

end A342371

/-! ## A342371.P8549782687901524240

`∑[A076973(A004278(n+1))]`
-/

namespace A342371.P8549782687901524240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P8549782687901524240

namespace A342371

/-- `∑[A076973(A004278(n+1))]` -/
def P8549782687901524240.Spec : Prop :=
  ∀ n, P8549782687901524240.a n = A342371 n

end A342371

/-! ## A342371.P2700842178097863454

`∑[A076272(A189887(n+1)+1)]`
-/

namespace A342371.P2700842178097863454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A189887 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P2700842178097863454

namespace A342371

/-- `∑[A076272(A189887(n+1)+1)]` -/
def P2700842178097863454.Spec : Prop :=
  ∀ n, P2700842178097863454.a n = A342371 n

end A342371

/-! ## A342371.P7102109911054559526

`∑[A076973(A103517(A289207(n)))]`
-/

namespace A342371.P7102109911054559526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A103517 (A289207 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P7102109911054559526

namespace A342371

/-- `∑[A076973(A103517(A289207(n)))]` -/
def P7102109911054559526.Spec : Prop :=
  ∀ n, P7102109911054559526.a n = A342371 n

end A342371

/-! ## A342371.P8559731870902684013

`∑[A076973(A131452(A267528(n)))]`
-/

namespace A342371.P8559731870902684013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A131452 (A267528 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P8559731870902684013

namespace A342371

/-- `∑[A076973(A131452(A267528(n)))]` -/
def P8559731870902684013.Spec : Prop :=
  ∀ n, P8559731870902684013.a n = A342371 n

end A342371

/-! ## A342371.P5589835865309778220

`∑[A076272(A051755(A233583(n+1)))]`
-/

namespace A342371.P5589835865309778220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A051755 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342371.P5589835865309778220

namespace A342371

/-- `∑[A076272(A051755(A233583(n+1)))]` -/
def P5589835865309778220.Spec : Prop :=
  ∀ n, P5589835865309778220.a n = A342371 n

end A342371

/-!
# A342375: Number of commutative rings without 1 containing n elements.

The programs for A342375, there is no canonical definition to state claims against.
-/

/-! ## A342375.P4232948497632389007

`A037289(n+1)-A127707(n+1)`
-/

namespace A342375.P4232948497632389007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037289 (n + 1) - A127707 (n + 1)

end

end A342375.P4232948497632389007

/-! ## A342375.P10946650970776017750

`A342377(n+1)-A342376(n+1)`
-/

namespace A342375.P10946650970776017750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342377 (n + 1) - A342376 (n + 1)

end

end A342375.P10946650970776017750

/-! ## A342375.P16899110896810022570

`A037289(n+1)-A061069(A037291(n+1))`
-/

namespace A342375.P16899110896810022570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037289 (n + 1) - A061069 (A037291 (n + 1)).toNat

end

end A342375.P16899110896810022570

/-! ## A342375.P15851158650713883466

`A037289(n+1)+A127708(n+1)-A037291(n+1)`
-/

namespace A342375.P15851158650713883466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037289 (n + 1) + (A127708 (n + 1) - A037291 (n + 1))

end

end A342375.P15851158650713883466

/-! ## A342375.P10232208103051847294

`A027623(n+1)-(A209401(n+1)+A127707(n+1))`
-/

namespace A342375.P10232208103051847294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - (A209401 (n + 1) + A127707 (n + 1))

end

end A342375.P10232208103051847294

/-!
# A342376: Number of non-commutative rings without 1 containing n elements.

The programs for A342376, there is no canonical definition to state claims against.
-/

/-! ## A342376.P15754406761998422191

`A209401(n+1)-A127708(n+1)`
-/

namespace A342376.P15754406761998422191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209401 (n + 1) - A127708 (n + 1)

end

end A342376.P15754406761998422191

/-! ## A342376.P17002243055102004828

`A342377(n+1)-A342375(n+1)`
-/

namespace A342376.P17002243055102004828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342377 (n + 1) - A342375 (n + 1)

end

end A342376.P17002243055102004828

/-! ## A342376.P4750018552120620812

`A027623(n+1)-(A127708(n+1)+A037289(n+1))`
-/

namespace A342376.P4750018552120620812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - (A127708 (n + 1) + A037289 (n + 1))

end

end A342376.P4750018552120620812

/-! ## A342376.P11930475332185463294

`A209401(n+1)+A127707(n+1)-A037291(n+1)`
-/

namespace A342376.P11930475332185463294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209401 (n + 1) + A127707 (n + 1) - A037291 (n + 1)

end

end A342376.P11930475332185463294

/-! ## A342376.P13221104798561595621

`A027623(n+1)-(A342375(n+1)+A037291(n+1))`
-/

namespace A342376.P13221104798561595621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - (A342375 (n + 1) + A037291 (n + 1))

end

end A342376.P13221104798561595621

/-!
# A342377: Number of rings without 1 containing n elements.

The programs for A342377, there is no canonical definition to state claims against.
-/

/-! ## A342377.P12043643479699197362

`A342375(n+1)+A342376(n+1)`
-/

namespace A342377.P12043643479699197362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342375 (n + 1) + A342376 (n + 1)

end

end A342377.P12043643479699197362

/-! ## A342377.P16146726091708147013

`A037234(n+1)-A037291(n+1)`
-/

namespace A342377.P16146726091708147013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (n + 1) - A037291 (n + 1)

end

end A342377.P16146726091708147013

/-! ## A342377.P12428921251507331494

`A027623(n+1)-A037291(n+1)`
-/

namespace A342377.P12428921251507331494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - A037291 (n + 1)

end

end A342377.P12428921251507331494

/-! ## A342377.P13783351823943922915

`A027623(n+1)-(A127708(n+1)+A127707(n+1))`
-/

namespace A342377.P13783351823943922915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - (A127708 (n + 1) + A127707 (n + 1))

end

end A342377.P13783351823943922915

/-! ## A342377.P12366231770038541999

`A209401(n+1)+A037289(n+1)-A037291(n+1)`
-/

namespace A342377.P12366231770038541999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209401 (n + 1) + A037289 (n + 1) - A037291 (n + 1)

end

end A342377.P12366231770038541999

/-!
# A342378: List of numbers whose binary expansion is an instance of the Zimin pattern ABA.

The programs for A342378, there is no canonical definition to state claims against.
-/

/-! ## A342378.P18244093614314492464

`lt[A147756(A342242(n)), n]`
-/

namespace A342378.P18244093614314492464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147756 (A342242 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342378.P18244093614314492464

/-! ## A342378.P8896612330623901292

`lt[A016754(A342242(n)), A005843(n)]`
-/

namespace A342378.P8896612330623901292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A342242 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342378.P8896612330623901292

/-! ## A342378.P10737871701855521282

`lt[A052927(A342241(n)), A062383(n)]`
-/

namespace A342378.P10737871701855521282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052927 (A342241 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342378.P10737871701855521282

/-! ## A342378.P2349221593514236660

`lt[A016754(A342242(n)), A267872(n)]`
-/

namespace A342378.P2349221593514236660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A342242 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342378.P2349221593514236660

/-! ## A342378.P8756622652605007413

`lt[A016754(A342242(n))², A016754(n)]`
-/

namespace A342378.P8756622652605007413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A342242 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342378.P8756622652605007413

/-! ## A342378.P513904832461972938

`lt[A002024(n+1), A030101(A200322(n))]`
-/

namespace A342378.P513904832461972938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A200322 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342378.P513904832461972938

/-! ## A342378.P3024034399324537014

`lt[A052927(A342241(n)), A118759(n)]`
-/

namespace A342378.P3024034399324537014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052927 (A342241 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342378.P3024034399324537014

/-!
# A342379: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^3/6 - x^2/2 - x - 1).

The programs for A342379, the canonical program `A342379.P6651033377838887251` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342379 has offset 0).

The definition of A342379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342379.P6651033377838887251

`ogf((5x^5-9x^6+7x^7-2x^8)/(1-6x+14x^2-16x^3+9x^4-2x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342379

/-- `ogf((5x^5-9x^6+7x^7-2x^8)/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P6651033377838887251.Spec : Prop :=
  ∀ n, P6651033377838887251.a n = A342379 n

theorem P6651033377838887251.correct : P6651033377838887251.Spec := by
  intro n
  simp only [A342379]

end A342379

/-! ## A342379.P1828060822679072946

`A002663(n)-A130543(n)`
-/

namespace A342379.P1828060822679072946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 n - A130543 n

end

end A342379.P1828060822679072946

namespace A342379

/-- `A002663(n)-A130543(n)` -/
def P1828060822679072946.Spec : Prop :=
  ∀ n, P1828060822679072946.a n = A342379 n

end A342379

/-! ## A342379.P15174878887060137686

`A057428(A002265(n))+A002663(n)`
-/

namespace A342379.P15174878887060137686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002265 n).toNat + A002663 n

end

end A342379.P15174878887060137686

namespace A342379

/-- `A057428(A002265(n))+A002663(n)` -/
def P15174878887060137686.Spec : Prop :=
  ∀ n, P15174878887060137686.a n = A342379 n

end A342379

/-! ## A342379.P16230278451987501004

`A002663(n)-A057427(A092278(n))`
-/

namespace A342379.P16230278451987501004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 n - A057427 (A092278 n).toNat

end

end A342379.P16230278451987501004

namespace A342379

/-- `A002663(n)-A057427(A092278(n))` -/
def P16230278451987501004.Spec : Prop :=
  ∀ n, P16230278451987501004.a n = A342379 n

end A342379

/-! ## A342379.P12022623992917155221

`A002663(n)-A157928(A000196(n))`
-/

namespace A342379.P12022623992917155221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 n - A157928 (A000196 n).toNat

end

end A342379.P12022623992917155221

namespace A342379

/-- `A002663(n)-A157928(A000196(n))` -/
def P12022623992917155221.Spec : Prop :=
  ∀ n, P12022623992917155221.a n = A342379 n

end A342379

/-! ## A342379.P2985492225198932188

`A000079(n)-(A130543(n)+A000125(n))`
-/

namespace A342379.P2985492225198932188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A130543 n + A000125 n)

end

end A342379.P2985492225198932188

namespace A342379

/-- `A000079(n)-(A130543(n)+A000125(n))` -/
def P2985492225198932188.Spec : Prop :=
  ∀ n, P2985492225198932188.a n = A342379 n

end A342379

/-! ## A342379.P12339247708920664100

`A057428(A002265(n))-A002663(n)*A057428(n)`
-/

namespace A342379.P12339247708920664100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002265 n).toNat - A002663 n * A057428 n

end

end A342379.P12339247708920664100

namespace A342379

/-- `A057428(A002265(n))-A002663(n)*A057428(n)` -/
def P12339247708920664100.Spec : Prop :=
  ∀ n, P12339247708920664100.a n = A342379 n

end A342379

/-! ## A342379.P13263236576852236861

`Δ[A002664(n)]-A130543(n)`
-/

namespace A342379.P13263236576852236861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A130543 n

end

end A342379.P13263236576852236861

namespace A342379

/-- `Δ[A002664(n)]-A130543(n)` -/
def P13263236576852236861.Spec : Prop :=
  ∀ n, P13263236576852236861.a n = A342379 n

end A342379

/-! ## A342379.P812825222653623841

`A342380(n+1)-A002664(n)`
-/

namespace A342379.P812825222653623841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342380 (n + 1) - A002664 n

end

end A342379.P812825222653623841

namespace A342379

/-- `A342380(n+1)-A002664(n)` -/
def P812825222653623841.Spec : Prop :=
  ∀ n, P812825222653623841.a n = A342379 n

end A342379

/-! ## A342379.P6392717007166665509

`A342380(n+1)+A035038(n)-A035038(n+1)`
-/

namespace A342379.P6392717007166665509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342380 (n + 1) + (A035038 n - A035038 (n + 1))

end

end A342379.P6392717007166665509

namespace A342379

/-- `A342380(n+1)+A035038(n)-A035038(n+1)` -/
def P6392717007166665509.Spec : Prop :=
  ∀ n, P6392717007166665509.a n = A342379 n

end A342379

/-!
# A342380: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^4/24 - x^3/6 - x^2/2 - x - 1).

The programs for A342380, the canonical program `A342380.P2786464954644071336` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342380 has offset 0).

The definition of A342380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342380.P2786464954644071336

`ogf((6x^6-14x^7+16x^8-9x^9+2x^10)/(1-7x+20x^2-30x^3+25x^4-11x^5+2x^6))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342380

/-- `ogf((6x^6-14x^7+16x^8-9x^9+2x^10)/(1-7x+20x^2-30x^3+25x^4-11x^5+2x^6))` -/
def P2786464954644071336.Spec : Prop :=
  ∀ n, P2786464954644071336.a n = A342380 n

theorem P2786464954644071336.correct : P2786464954644071336.Spec := by
  intro n
  simp only [A342380]

end A342380

/-! ## A342380.P15486832476871417587

`A002664(n)-A130543(abs(1-n))`
-/

namespace A342380.P15486832476871417587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n - A130543 |1 - (n : ℤ)|.toNat

end

end A342380.P15486832476871417587

namespace A342380

/-- `A002664(n)-A130543(abs(1-n))` -/
def P15486832476871417587.Spec : Prop :=
  ∀ n, P15486832476871417587.a n = A342380 n

end A342380

/-! ## A342380.P14192390627142983996

`A000225(n)-(A057427(A130496(n))+A055795(n+1))`
-/

namespace A342380.P14192390627142983996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A057427 (A130496 n).toNat + A055795 (n + 1))

end

end A342380.P14192390627142983996

namespace A342380

/-- `A000225(n)-(A057427(A130496(n))+A055795(n+1))` -/
def P14192390627142983996.Spec : Prop :=
  ∀ n, P14192390627142983996.a n = A342380 n

end A342380

/-! ## A342380.P9834478503454478314

`A002664(n)-A057427(A306433(n))`
-/

namespace A342380.P9834478503454478314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n - A057427 (A306433 n).toNat

end

end A342380.P9834478503454478314

namespace A342380

/-- `A002664(n)-A057427(A306433(n))` -/
def P9834478503454478314.Spec : Prop :=
  ∀ n, P9834478503454478314.a n = A342380 n

end A342380

/-! ## A342380.P15756857889742095122

`Δ[A035038(n)]-A057427(A306433(n))`
-/

namespace A342380.P15756857889742095122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 (A306433 n).toNat

end

end A342380.P15756857889742095122

namespace A342380

/-- `Δ[A035038(n)]-A057427(A306433(n))` -/
def P15756857889742095122.Spec : Prop :=
  ∀ n, P15756857889742095122.a n = A342380 n

end A342380

/-! ## A342380.P2670763969399703571

`Δ[2^n-A006261(n)]-A057427(A306433(n))`
-/

namespace A342380.P2670763969399703571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 (A306433 n).toNat

end

end A342380.P2670763969399703571

namespace A342380

/-- `Δ[2^n-A006261(n)]-A057427(A306433(n))` -/
def P2670763969399703571.Spec : Prop :=
  ∀ n, P2670763969399703571.a n = A342380 n

end A342380

/-! ## A342380.P4926433564032471867

`A084636(n+1)-2^n-A057427(A306433(n))`
-/

namespace A342380.P4926433564032471867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084636 (n + 1) - (2 ^ n : ℤ) - A057427 (A306433 n).toNat

end

end A342380.P4926433564032471867

namespace A342380

/-- `A084636(n+1)-2^n-A057427(A306433(n))` -/
def P4926433564032471867.Spec : Prop :=
  ∀ n, P4926433564032471867.a n = A342380 n

end A342380

/-! ## A342380.P7722093863491704384

`A002663(n)-(A057427(A306433(n))+A000332(n))`
-/

namespace A342380.P7722093863491704384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 n - (A057427 (A306433 n).toNat + A000332 n)

end

end A342380.P7722093863491704384

namespace A342380

/-- `A002663(n)-(A057427(A306433(n))+A000332(n))` -/
def P7722093863491704384.Spec : Prop :=
  ∀ n, P7722093863491704384.a n = A342380 n

end A342380

/-! ## A342380.P7282623547596593728

`A000225(n)-(A057427(A306433(n))+A055795(n+1))`
-/

namespace A342380.P7282623547596593728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A057427 (A306433 n).toNat + A055795 (n + 1))

end

end A342380.P7282623547596593728

namespace A342380

/-- `A000225(n)-(A057427(A306433(n))+A055795(n+1))` -/
def P7282623547596593728.Spec : Prop :=
  ∀ n, P7282623547596593728.a n = A342380 n

end A342380

/-!
# A342381: Triangle read by rows: T(n,k) is the number of symmetries of the n-dimensional hypercube that fix exactly 2*k facets; n,k >= 0.

The programs for A342381, the canonical program `A342381.P14301980402529714952` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342381 has offset 0).

The definition of A342381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342381.P14301980402529714952

`A000354(row(n)-col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A342381

/-- `A000354(row(n)-col(n))*C(row(n), col(n))` -/
def P14301980402529714952.Spec : Prop :=
  ∀ n, P14301980402529714952.a n = A342381 n

theorem P14301980402529714952.correct : P14301980402529714952.Spec := by
  intro n
  simp only [A342381]

end A342381

/-! ## A342381.P8416467622405171547

`A007318(n)*A000354(A025581(n))`
-/

namespace A342381.P8416467622405171547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000354 (A025581 n).toNat

end

end A342381.P8416467622405171547

namespace A342381

/-- `A007318(n)*A000354(A025581(n))` -/
def P8416467622405171547.Spec : Prop :=
  ∀ n, P8416467622405171547.a n = A342381 n

end A342381

/-! ## A342381.P18094979060854713920

`abs(A000354(A025581(n))*A108086(n))`
-/

namespace A342381.P18094979060854713920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000354 (A025581 n).toNat * A108086 n|

end

end A342381.P18094979060854713920

namespace A342381

/-- `abs(A000354(A025581(n))*A108086(n))` -/
def P18094979060854713920.Spec : Prop :=
  ∀ n, P18094979060854713920.a n = A342381 n

end A342381

/-! ## A342381.P14489979758515821877

`sqrt(A008459(n))*A000354(A025581(n))`
-/

namespace A342381.P14489979758515821877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000354 (A025581 n).toNat : ℝ)

end

end A342381.P14489979758515821877

namespace A342381

/-- `sqrt(A008459(n))*A000354(A025581(n))` -/
def P14489979758515821877.Spec : Prop :=
  ∀ n, P14489979758515821877.a n = (A342381 n : ℝ)

end A342381

/-! ## A342381.P17175795206705703994

`Δ[A102363(n)]*A000354(A025581(n))`
-/

namespace A342381.P17175795206705703994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000354 (A025581 n).toNat

end

end A342381.P17175795206705703994

namespace A342381

/-- `Δ[A102363(n)]*A000354(A025581(n))` -/
def P17175795206705703994.Spec : Prop :=
  ∀ n, P17175795206705703994.a n = A342381 n

end A342381

/-! ## A342381.P15291521671927715401

`A000354(A025581(n))/2*A028326(n)`
-/

namespace A342381.P15291521671927715401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A342381.P15291521671927715401

namespace A342381

/-- `A000354(A025581(n))/2*A028326(n)` -/
def P15291521671927715401.Spec : Prop :=
  ∀ n, P15291521671927715401.a n = (A342381 n : ℚ)

end A342381

/-! ## A342381.P858304091265656923

`A000354(A025581(n))*A001281(A028326(n))`
-/

namespace A342381.P858304091265656923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000354 (A025581 n).toNat * A001281 (A028326 n).toNat

end

end A342381.P858304091265656923

namespace A342381

/-- `A000354(A025581(n))*A001281(A028326(n))` -/
def P858304091265656923.Spec : Prop :=
  ∀ n, P858304091265656923.a n = A342381 n

end A342381

/-! ## A342381.P18273877241876789415

`A000354(A025581(n))*A025581(A107105(n))`
-/

namespace A342381.P18273877241876789415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000354 (A025581 n).toNat * A025581 (A107105 n).toNat

end

end A342381.P18273877241876789415

namespace A342381

/-- `A000354(A025581(n))*A025581(A107105(n))` -/
def P18273877241876789415.Spec : Prop :=
  ∀ n, P18273877241876789415.a n = A342381 n

end A342381

/-!
# A342385: Triangle T(n,k) read by rows (n >= 0, 0 <= k <= n): first column is A001477 and column k > 0 is k*A028310.

The programs for A342385, the canonical program `A342385.P11220617682431407402` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342385 has offset 0).

The definition of A342385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342385.P14301379842636426036

`lcm(A003984(n), A086461(n))`
-/

namespace A342385.P14301379842636426036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003984 n) (A086461 n)

end

end A342385.P14301379842636426036

namespace A342385

/-- `lcm(A003984(n), A086461(n))` -/
def P14301379842636426036.Spec : Prop :=
  ∀ n, (P14301379842636426036.a n : ℤ) = A342385 n

end A342385

/-! ## A342385.P11220617682431407402

`A144217(n+1)+A004247(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A342385

/-- `A144217(n+1)+A004247(n)` -/
def P11220617682431407402.Spec : Prop :=
  ∀ n, P11220617682431407402.a n = A342385 n

theorem P11220617682431407402.correct : P11220617682431407402.Spec := by
  intro n
  simp only [A342385]

end A342385

/-! ## A342385.P1508839183497863103

`A131821(n+1)-A176270(n)`
-/

namespace A342385.P1508839183497863103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - A176270 n

end

end A342385.P1508839183497863103

namespace A342385

/-- `A131821(n+1)-A176270(n)` -/
def P1508839183497863103.Spec : Prop :=
  ∀ n, P1508839183497863103.a n = A342385 n

theorem P1508839183497863103.correct : P1508839183497863103.Spec := by
  intro n
  simp only [A342385, Nat.add_sub_cancel, A342385.P1508839183497863103.a, A342385.P11220617682431407402.a, A004247, A004247.P2751605162508615148.a, A131821, A131821.P13312494062197045656.a, A144217, A144217.P17527769007908988650.a, A176270, A176270.P15264438552937889960.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A342385

/-! ## A342385.P13328734683102899726

`A204250(n+1)-A131901(n+1)`
-/

namespace A342385.P13328734683102899726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) - A131901 (n + 1)

end

end A342385.P13328734683102899726

namespace A342385

/-- `A204250(n+1)-A131901(n+1)` -/
def P13328734683102899726.Spec : Prop :=
  ∀ n, P13328734683102899726.a n = A342385 n

end A342385

/-! ## A342385.P3782040288043167759

`A131818(n+1)-A176270(A083920(n))`
-/

namespace A342385.P3782040288043167759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A176270 (A083920 n).toNat

end

end A342385.P3782040288043167759

namespace A342385

/-- `A131818(n+1)-A176270(A083920(n))` -/
def P3782040288043167759.Spec : Prop :=
  ∀ n, P3782040288043167759.a n = A342385 n

end A342385

/-! ## A342385.P13277083478514766025

`A131818(n+1)-A176270(A271439(n))`
-/

namespace A342385.P13277083478514766025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - A176270 (A271439 n).toNat

end

end A342385.P13277083478514766025

namespace A342385

/-- `A131818(n+1)-A176270(A271439(n))` -/
def P13277083478514766025.Spec : Prop :=
  ∀ n, P13277083478514766025.a n = A342385 n

end A342385

/-! ## A342385.P10486235192930741088

`A004247(n)+A003056(n*A103451(n))`
-/

namespace A342385.P10486235192930741088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A003056 ((n : ℤ) * A103451 n).toNat

end

end A342385.P10486235192930741088

namespace A342385

/-- `A004247(n)+A003056(n*A103451(n))` -/
def P10486235192930741088.Spec : Prop :=
  ∀ n, P10486235192930741088.a n = A342385 n

end A342385

/-! ## A342385.P17633265819396752145

`∏{e}[A036561(n), #]%(n+1)`
-/

namespace A342385.P17633265819396752145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % (n + 1)

end

end A342385.P17633265819396752145

namespace A342385

/-- `∏{e}[A036561(n), #]%(n+1)` -/
def P17633265819396752145.Spec : Prop :=
  ∀ n, (P17633265819396752145.a n : ℤ) = A342385 n

end A342385

/-! ## A342385.P16325529263195966519

`∏{e}[A036561(n), #]-A000007(n)`
-/

namespace A342385.P16325529263195966519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A000007 n

end

end A342385.P16325529263195966519

namespace A342385

/-- `∏{e}[A036561(n), #]-A000007(n)` -/
def P16325529263195966519.Spec : Prop :=
  ∀ n, P16325529263195966519.a n = A342385 n

end A342385

/-! ## A342385.P326106311558215896

`∏{e}[A036561(n), #]*A057427(n)`
-/

namespace A342385.P326106311558215896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A057427 n

end

end A342385.P326106311558215896

namespace A342385

/-- `∏{e}[A036561(n), #]*A057427(n)` -/
def P326106311558215896.Spec : Prop :=
  ∀ n, P326106311558215896.a n = A342385 n

end A342385

/-! ## A342385.P6491063419252420553

`and(1, A000040(n+1))*∏{e}[A036561(n), #]`
-/

namespace A342385.P6491063419252420553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A342385.P6491063419252420553

namespace A342385

/-- `and(1, A000040(n+1))*∏{e}[A036561(n), #]` -/
def P6491063419252420553.Spec : Prop :=
  ∀ n, P6491063419252420553.a n = A342385 n

end A342385

/-!
# A342386: Smallest prime out of n^2 consecutive primes such that this set of consecutive primes has the smallest potential magic constant (as given in A342124).

The programs for A342386, there is no canonical definition to state claims against.
-/

/-! ## A342386.P3230438300215383600

`A206958(A026918(n))+A064187(n+1)`
-/

namespace A342386.P3230438300215383600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 (A026918 n).toNat + A064187 (n + 1)

end

end A342386.P3230438300215383600

/-! ## A342386.P17333942573164820135

`A064187(n+1)-A000035(A007283(n))`
-/

namespace A342386.P17333942573164820135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064187 (n + 1) - A000035 (A007283 n).toNat

end

end A342386.P17333942573164820135

/-! ## A342386.P17696823233667578568

`A064187(n+1)-A000035(A033484(n))`
-/

namespace A342386.P17696823233667578568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064187 (n + 1) - A000035 (A033484 n).toNat

end

end A342386.P17696823233667578568

/-! ## A342386.P4449370503801431356

`A064187(n+1)-A000007(A118120(n))`
-/

namespace A342386.P4449370503801431356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064187 (n + 1) - A000007 (A118120 n).toNat

end

end A342386.P4449370503801431356

/-!
# A342387: Integers x such that there exists y, x>y>=1, satisfying (y+1)/(x+1) = (x||(y+1))/(y||(x+1)) where z||t is the concatenation of z and t.

The programs for A342387, there is no canonical definition to state claims against.
-/

/-! ## A342387.P12070784550804030410

`A341895(2*n+3)+A268643(A002283(n))`
-/

namespace A342387.P12070784550804030410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341895 (2 * n + 3) + A268643 (A002283 n).toNat

end

end A342387.P12070784550804030410

/-!
# A342388: Integers y corresponding to the terms of A342387.

The programs for A342388, there is no canonical definition to state claims against.
-/

/-! ## A342388.P6531450511309183917

`A180003(2*n+3)-A010057(A351249(n+1))`
-/

namespace A342388.P6531450511309183917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180003 (2 * n + 3) - A010057 (A351249 (n + 1)).toNat

end

end A342388.P6531450511309183917

/-!
# A342389: a(n) = Sum_{k=1..n} k^gcd(k,n).

The programs for A342389, the canonical program `A342389.P52488223629234568` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342389 has offset 1).

The definition of A342389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)^gcd(#+1, n+1)]` (program `A342389.P52488223629234568`, by `A342389.P52488223629234568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342389.P52488223629234568

`∑{#}[n, (#+1)^gcd(#+1, n+1)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342389

/-- `∑{#}[n, (#+1)^gcd(#+1, n+1)]` -/
def P52488223629234568.Spec : Prop :=
  ∀ n, (P52488223629234568.a n : ℤ) = A342389 (n + 1)

theorem P52488223629234568.correct : P52488223629234568.Spec := by
  intro n
  simp only [A342389, Nat.add_sub_cancel]

end A342389

/-! ## A342389.P8815014005438507012

`A000027(A342423(n+1)+A324062(n))`
-/

namespace A342389.P8815014005438507012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A342423 (n + 1) + A324062 n).toNat

end

end A342389.P8815014005438507012

namespace A342389

/-- `A000027(A342423(n+1)+A324062(n))` -/
def P8815014005438507012.Spec : Prop :=
  ∀ n, P8815014005438507012.a n = A342389 (n + 1)

end A342389

/-!
# A342390: Numbers k such that the ring of integers of Q(2^(1/k)) is not Z[2^(1/k)].

The programs for A342390, there is no canonical definition to state claims against.
-/

/-! ## A342390.P4125715012327231519

`filter[A125773(n+1), A284490(#)]`
-/

namespace A342390.P4125715012327231519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284490 (f1 j).toNat = 1) n)

end

end A342390.P4125715012327231519

/-! ## A342390.P14977258202294799569

`filter[A125773(n+2), A341591(#)]`
-/

namespace A342390.P14977258202294799569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A342390.P14977258202294799569

/-! ## A342390.P12678816800791806045

`filter[A125773(n+2), A341642(#)]`
-/

namespace A342390.P12678816800791806045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A342390.P12678816800791806045

/-! ## A342390.P588430594582610851

`filter[A125773(n+3), A168184(#)]`
-/

namespace A342390.P588430594582610851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A342390.P588430594582610851

/-! ## A342390.P17168398017371590420

`filter[A125773(n+3), A284487(#)]`
-/

namespace A342390.P17168398017371590420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125773 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284487 (f1 j).toNat = 1) n)

end

end A342390.P17168398017371590420

/-!
# A342392: Cubefree numbers a > 1 such that the ring of integers of Q(a^(1/3)) is Z[a^(1/3)].

The programs for A342392, the canonical program `A342392.P17975330160258914894` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342392 has offset 1).

The definition of A342392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342392.P1179829690577376148

`record[A007947(A275910(n+1))]`
-/

namespace A342392.P1179829690577376148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A275910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342392.P1179829690577376148

namespace A342392

/-- `record[A007947(A275910(n+1))]` -/
def P1179829690577376148.Spec : Prop :=
  ∀ n, P1179829690577376148.a n = A342392 (n + 1)

end A342392

/-! ## A342392.P13981716227119248098

`filter[A275910(n+1), A008966(#)]`
-/

namespace A342392.P13981716227119248098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A342392.P13981716227119248098

namespace A342392

/-- `filter[A275910(n+1), A008966(#)]` -/
def P13981716227119248098.Spec : Prop :=
  ∀ n, P13981716227119248098.a n = A342392 (n + 1)

end A342392

/-! ## A342392.P1624850954494525922

`filter[A275910(n+1), A353559(#)]`
-/

namespace A342392.P1624850954494525922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A342392.P1624850954494525922

namespace A342392

/-- `filter[A275910(n+1), A353559(#)]` -/
def P1624850954494525922.Spec : Prop :=
  ∀ n, P1624850954494525922.a n = A342392 (n + 1)

end A342392

/-! ## A342392.P17975330160258914894

`∩[A005117(n+1), A275910(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A342392

/-- `∩[A005117(n+1), A275910(n+1)]` -/
def P17975330160258914894.Spec : Prop :=
  ∀ n, (P17975330160258914894.a n : ℤ) = A342392 (n + 1)

theorem P17975330160258914894.correct : P17975330160258914894.Spec := by
  intro n
  simp only [A342392, Nat.add_sub_cancel]

end A342392

/-! ## A342392.P3623185460352979693

`∩[A144338(n+1), A275910(n+1)]`
-/

namespace A342392.P3623185460352979693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342392.P3623185460352979693

namespace A342392

/-- `∩[A144338(n+1), A275910(n+1)]` -/
def P3623185460352979693.Spec : Prop :=
  ∀ n, (P3623185460352979693.a n : ℤ) = A342392 (n + 1)

end A342392

/-! ## A342392.P15289555441806149270

`∩[A275910(n+1), A348499(n+1)]`
-/

namespace A342392.P15289555441806149270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342392.P15289555441806149270

namespace A342392

/-- `∩[A275910(n+1), A348499(n+1)]` -/
def P15289555441806149270.Spec : Prop :=
  ∀ n, (P15289555441806149270.a n : ℤ) = A342392 (n + 1)

end A342392

/-! ## A342392.P2145685161333595966

`∩[A275910(n+1), A348506(n+1)]`
-/

namespace A342392.P2145685161333595966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342392.P2145685161333595966

namespace A342392

/-- `∩[A275910(n+1), A348506(n+1)]` -/
def P2145685161333595966.Spec : Prop :=
  ∀ n, (P2145685161333595966.a n : ℤ) = A342392 (n + 1)

end A342392

/-! ## A342392.P16589283321422799843

`∩[A193303(n+1), A275910(n+1)]`
-/

namespace A342392.P16589283321422799843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342392.P16589283321422799843

namespace A342392

/-- `∩[A193303(n+1), A275910(n+1)]` -/
def P16589283321422799843.Spec : Prop :=
  ∀ n, (P16589283321422799843.a n : ℤ) = A342392 (n + 1)

end A342392

/-! ## A342392.P10872602012195151250

`eq[2, A000188(A313100(n)-A004396(n))]`
-/

namespace A342392.P10872602012195151250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A313100 n - A004396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342392.P10872602012195151250

namespace A342392

/-- `eq[2, A000188(A313100(n)-A004396(n))]` -/
def P10872602012195151250.Spec : Prop :=
  ∀ n, (P10872602012195151250.a n : ℤ) = A342392 (n + 1)

end A342392

/-! ## A342392.P6642918725218393369

`eq[A000035(A314495(n)), A105570(n)]`
-/

namespace A342392.P6642918725218393369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A314495 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342392.P6642918725218393369

namespace A342392

/-- `eq[A000035(A314495(n)), A105570(n)]` -/
def P6642918725218393369.Spec : Prop :=
  ∀ n, (P6642918725218393369.a n : ℤ) = A342392 (n + 1)

end A342392

/-!
# A342394: a(n) = Sum_{k=1..n} k^(gcd(k,n) - 1).

The programs for A342394, the canonical program `A342394.P18278485025926051691` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342394 has offset 1).

The definition of A342394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342394.P18278485025926051691

`∑{#}[n, (#+1)^(gcd(#+1, n+1)-1)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342394

/-- `∑{#}[n, (#+1)^(gcd(#+1, n+1)-1)]` -/
def P18278485025926051691.Spec : Prop :=
  ∀ n, P18278485025926051691.a n = (A342394 (n + 1) : ℚ)

end A342394

/-! ## A342394.P8283510162930924289

`A342436(n+1)+A046660(A162326(n))`
-/

namespace A342394.P8283510162930924289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342436 (n + 1) + A046660 (A162326 n).toNat

end

end A342394.P8283510162930924289

namespace A342394

/-- `A342436(n+1)+A046660(A162326(n))` -/
def P8283510162930924289.Spec : Prop :=
  ∀ n, P8283510162930924289.a n = A342394 (n + 1)

end A342394

/-! ## A342394.P4079692187543999303

`A342436(n+1)+A342321(A342318(n))`
-/

namespace A342394.P4079692187543999303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342436 (n + 1) + A342321 (A342318 n).toNat

end

end A342394.P4079692187543999303

namespace A342394

/-- `A342436(n+1)+A342321(A342318(n))` -/
def P4079692187543999303.Spec : Prop :=
  ∀ n, P4079692187543999303.a n = A342394 (n + 1)

end A342394

/-!
# A342395: a(n) = Sum_{k=1..n} k^(n/gcd(k,n)).

The programs for A342395, the canonical program `A342395.P12001368911178600364` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342395 has offset 1).

The definition of A342395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342395.P12001368911178600364

`∑{#}[n, (#+1)^((n+1)/gcd(#+1, n+1))]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342395

/-- `∑{#}[n, (#+1)^((n+1)/gcd(#+1, n+1))]` -/
def P12001368911178600364.Spec : Prop :=
  ∀ n, P12001368911178600364.a n = (A342395 (n + 1) : ℝ)

end A342395

/-!
# A342396: a(n) = Sum_{k=1..n} k^(n/gcd(k,n) - 1).

The programs for A342396, the canonical program `A342396.P6402183447310500112` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342396 has offset 1).

The definition of A342396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342396.P6402183447310500112

`∑{#}[n, (#+1)^((n+1)/gcd(#+1, n+1)-1)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342396

/-- `∑{#}[n, (#+1)^((n+1)/gcd(#+1, n+1)-1)]` -/
def P6402183447310500112.Spec : Prop :=
  ∀ n, P6402183447310500112.a n = (A342396 (n + 1) : ℝ)

end A342396

/-!
# A342397: Expansion of the o.g.f. (2*x^2 + 3*x + 2)*x/((x + 1)^2*(x - 1)^4).

The programs for A342397, the canonical program `A342397.P16412520922907306781` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342397 has offset 0).

The definition of A342397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+3x^2+2x^3)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` (program `A342397.P16412520922907306781`, by `A342397.P16412520922907306781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342397.P16412520922907306781

`ogf((2x+3x^2+2x^3)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A342397

/-- `ogf((2x+3x^2+2x^3)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P16412520922907306781.Spec : Prop :=
  ∀ n, P16412520922907306781.a n = A342397 n

theorem P16412520922907306781.correct : P16412520922907306781.Spec := by
  intro n
  simp only [A342397]

end A342397

/-! ## A342397.P9960978317805829478

`(n+1)*(1-(-1)^n)/16+7/4*(C(n+3, 3)-C(n+2, 2))`
-/

namespace A342397.P9960978317805829478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (1 - (-1) ^ n) : ℚ) / 16 + (7 : ℚ) / 4 * ((Nat.choose (n + 3) 3 : ℤ) - (Nat.choose (n + 2) 2 : ℤ) : ℚ)

end

end A342397.P9960978317805829478

namespace A342397

/-- `(n+1)*(1-(-1)^n)/16+7/4*(C(n+3, 3)-C(n+2, 2))` -/
def P9960978317805829478.Spec : Prop :=
  ∀ n, P9960978317805829478.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P9157557447394268550

`(A342362(n)-(n+1))/4`
-/

namespace A342397.P9157557447394268550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342362 n - (n + 1 : ℤ) : ℚ) / 4

end

end A342397.P9157557447394268550

namespace A342397

/-- `(A342362(n)-(n+1))/4` -/
def P9157557447394268550.Spec : Prop :=
  ∀ n, P9157557447394268550.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P5468331653254641774

`∑[∑[gcd(n, ∑[n])+n]]`
-/

namespace A342397.P5468331653254641774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P5468331653254641774

namespace A342397

/-- `∑[∑[gcd(n, ∑[n])+n]]` -/
def P5468331653254641774.Spec : Prop :=
  ∀ n, (P5468331653254641774.a n : ℤ) = A342397 n

end A342397

/-! ## A342397.P14202851440545249883

`∑[∑[lcm(2, n)/2+n]]`
-/

namespace A342397.P14202851440545249883
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2 + (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P14202851440545249883

namespace A342397

/-- `∑[∑[lcm(2, n)/2+n]]` -/
def P14202851440545249883.Spec : Prop :=
  ∀ n, P14202851440545249883.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P4677315373295053790

`∑[∑[n-n/or(n, -2)]]`
-/

namespace A342397.P4677315373295053790
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P4677315373295053790

namespace A342397

/-- `∑[∑[n-n/or(n, -2)]]` -/
def P4677315373295053790.Spec : Prop :=
  ∀ n, P4677315373295053790.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P592574442897709054

`∑[∑[(n%2+3)*n/2]]`
-/

namespace A342397.P592574442897709054
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 3 : ℕ) : ℚ) * ((n : ℚ) / 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P592574442897709054

namespace A342397

/-- `∑[∑[(n%2+3)*n/2]]` -/
def P592574442897709054.Spec : Prop :=
  ∀ n, P592574442897709054.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P15316721389296523863

`∑[∑[n/(2-and(1, n))+n]]`
-/

namespace A342397.P15316721389296523863
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ) + (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P15316721389296523863

namespace A342397

/-- `∑[∑[n/(2-and(1, n))+n]]` -/
def P15316721389296523863.Spec : Prop :=
  ∀ n, P15316721389296523863.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P17251376045218483340

`∑[∑[-(n/or(n, -2))]+∑[n]]`
-/

namespace A342397.P17251376045218483340
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P17251376045218483340

namespace A342397

/-- `∑[∑[-(n/or(n, -2))]+∑[n]]` -/
def P17251376045218483340.Spec : Prop :=
  ∀ n, P17251376045218483340.a n = (A342397 n : ℚ)

end A342397

/-! ## A342397.P12718455638766628963

`∑[A274830(n+1)]`
-/

namespace A342397.P12718455638766628963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P12718455638766628963

namespace A342397

/-- `∑[A274830(n+1)]` -/
def P12718455638766628963.Spec : Prop :=
  ∀ n, P12718455638766628963.a n = A342397 n

end A342397

/-! ## A342397.P16637258703178625727

`∑[A001318(n)+∑[n]]`
-/

namespace A342397.P16637258703178625727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P16637258703178625727

namespace A342397

/-- `∑[A001318(n)+∑[n]]` -/
def P16637258703178625727.Spec : Prop :=
  ∀ n, P16637258703178625727.a n = A342397 n

end A342397

/-! ## A342397.P2458488901954922010

`∑[∑[A026741(n)+n]]`
-/

namespace A342397.P2458488901954922010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P2458488901954922010

namespace A342397

/-- `∑[∑[A026741(n)+n]]` -/
def P2458488901954922010.Spec : Prop :=
  ∀ n, P2458488901954922010.a n = A342397 n

end A342397

/-! ## A342397.P5566368859062654890

`A109900(n)+∑[∑[n]]`
-/

namespace A342397.P5566368859062654890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342397.P5566368859062654890

namespace A342397

/-- `A109900(n)+∑[∑[n]]` -/
def P5566368859062654890.Spec : Prop :=
  ∀ n, P5566368859062654890.a n = A342397 n

end A342397

/-! ## A342397.P18401840629088697761

`∑[∑[abs(A176447(n))+n]]`
-/

namespace A342397.P18401840629088697761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176447 n| + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P18401840629088697761

namespace A342397

/-- `∑[∑[abs(A176447(n))+n]]` -/
def P18401840629088697761.Spec : Prop :=
  ∀ n, P18401840629088697761.a n = A342397 n

end A342397

/-! ## A342397.P10530814817309641496

`∑[∑[sqrt(A168077(n))+n]]`
-/

namespace A342397.P10530814817309641496
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168077 n : ℝ) + (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P10530814817309641496

namespace A342397

/-- `∑[∑[sqrt(A168077(n))+n]]` -/
def P10530814817309641496.Spec : Prop :=
  ∀ n, P10530814817309641496.a n = (A342397 n : ℝ)

end A342397

/-! ## A342397.P820028571216759680

`∑[(n+1)²-A101881(n)]`
-/

namespace A342397.P820028571216759680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P820028571216759680

namespace A342397

/-- `∑[(n+1)²-A101881(n)]` -/
def P820028571216759680.Spec : Prop :=
  ∀ n, P820028571216759680.a n = A342397 n

end A342397

/-! ## A342397.P5983655751525764804

`A294172(n+1)-∑[n+1]`
-/

namespace A342397.P5983655751525764804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294172 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342397.P5983655751525764804

namespace A342397

/-- `A294172(n+1)-∑[n+1]` -/
def P5983655751525764804.Spec : Prop :=
  ∀ n, P5983655751525764804.a n = A342397 n

end A342397

/-! ## A342397.P5674911154759061821

`∑[comp[3*n]²-1-A195313(n)]`
-/

namespace A342397.P5674911154759061821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 : ℤ) - 1 - A195313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342397.P5674911154759061821

namespace A342397

/-- `∑[comp[3*n]²-1-A195313(n)]` -/
def P5674911154759061821.Spec : Prop :=
  ∀ n, P5674911154759061821.a n = A342397 n

end A342397

/-! ## A342397.P1635155847753263751

`A006918(n)+A002717(n)`
-/

namespace A342397.P1635155847753263751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A002717 n

end

end A342397.P1635155847753263751

namespace A342397

/-- `A006918(n)+A002717(n)` -/
def P1635155847753263751.Spec : Prop :=
  ∀ n, P1635155847753263751.a n = A342397 n

end A342397

/-! ## A342397.P6523830626751500637

`A212981(n)-A034828(n)`
-/

namespace A342397.P6523830626751500637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212981 n - A034828 n

end

end A342397.P6523830626751500637

namespace A342397

/-- `A212981(n)-A034828(n)` -/
def P6523830626751500637.Spec : Prop :=
  ∀ n, P6523830626751500637.a n = A342397 n

end A342397

/-!
# A342398: Numbers k such that there is a subset of the nontrivial unitary divisors of k, {d|k : 1 < d < k, gcd(d, k/d) = 1}, that adds up to k.

The programs for A342398, there is no canonical definition to state claims against.
-/

/-! ## A342398.P1414842809206595279

`∩[A034683(n+1), A392438(n+1)]`
-/

namespace A342398.P1414842809206595279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342398.P1414842809206595279

/-! ## A342398.P1206702433198493657

`∩[A152442(n+1), A293188(n+1)]`
-/

namespace A342398.P1206702433198493657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342398.P1206702433198493657

/-! ## A342398.P12413739822112348634

`∩[A034683(n+1), A153763(n+1)]`
-/

namespace A342398.P12413739822112348634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342398.P12413739822112348634

/-! ## A342398.P16104470407896117620

`A034683(A293754(n+1))`
-/

namespace A342398.P16104470407896117620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (A293754 (n + 1)).toNat

end

end A342398.P16104470407896117620

/-! ## A342398.P1891417476676729934

`lt[5, A129468(A233583(n+1))]`
-/

namespace A342398.P1891417476676729934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342398.P1891417476676729934

