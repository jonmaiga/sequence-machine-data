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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A303200: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303200, there is no canonical definition to state claims against.
-/

/-! ## A303200.P14156426216483764770

`A303197(∑[n+4]+11)`
-/

namespace A303200.P14156426216483764770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303200.P14156426216483764770

/-! ## A303200.P6523690616021774878

`or(char[1], A303197(A056000(n)+15))`
-/

namespace A303200.P6523690616021774878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303197 (A056000 n + 15).toNat)

end

end A303200.P6523690616021774878

/-! ## A303200.P16591823728616064868

`A326683(n)+A303197(A056000(n)+15)`
-/

namespace A303200.P16591823728616064868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A303197 (A056000 n + 15).toNat

end

end A303200.P16591823728616064868

/-!
# A303201: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303201, there is no canonical definition to state claims against.
-/

/-! ## A303201.P4577874860863211405

`A303197(A166136(n+4))`
-/

namespace A303201.P4577874860863211405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A166136 (n + 4)).toNat

end

end A303201.P4577874860863211405

/-! ## A303201.P17209961303814631837

`A303197(A056115(n)+21)`
-/

namespace A303201.P17209961303814631837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A056115 n + 21).toNat

end

end A303201.P17209961303814631837

/-! ## A303201.P15982379512895631649

`A303197(A167499(n+4)+1)`
-/

namespace A303201.P15982379512895631649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167499 (n + 4) + 1).toNat

end

end A303201.P15982379512895631649

/-! ## A303201.P9338986893371189706

`A303197(A167614(n+4)+3)`
-/

namespace A303201.P9338986893371189706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167614 (n + 4) + 3).toNat

end

end A303201.P9338986893371189706

/-! ## A303201.P16544340292776253650

`A303197(A000124(n+5)+5)`
-/

namespace A303201.P16544340292776253650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A000124 (n + 5) + 5).toNat

end

end A303201.P16544340292776253650

/-!
# A303202: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303202, there is no canonical definition to state claims against.
-/

/-! ## A303202.P11904513456629573048

`A303197(A167487(n+5))`
-/

namespace A303202.P11904513456629573048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167487 (n + 5)).toNat

end

end A303202.P11904513456629573048

/-! ## A303202.P17782134794676539775

`A303197(A056119(n)+28)`
-/

namespace A303202.P17782134794676539775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A056119 n + 28).toNat

end

end A303202.P17782134794676539775

/-! ## A303202.P18416551422259032453

`A303197(eq[11, A066657(n)])`
-/

namespace A303202.P18416551422259032453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303202.P18416551422259032453

/-! ## A303202.P4949525352935213694

`A303197(A167614(n+5)+4)`
-/

namespace A303202.P4949525352935213694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167614 (n + 5) + 4).toNat

end

end A303202.P4949525352935213694

/-! ## A303202.P840597947670344789

`A303197(A133263(n+6)+5)`
-/

namespace A303202.P840597947670344789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A133263 (n + 6) + 5).toNat

end

end A303202.P840597947670344789

/-!
# A303203: Number of permutations p of [2n+1] such that 0p has a nonincreasing jump sequence beginning with n+1.

The programs for A303203, there is no canonical definition to state claims against.
-/

/-! ## A303203.P14326190553188977214

`A303204(Δ[n²])`
-/

namespace A303203.P14326190553188977214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A303203.P14326190553188977214

/-! ## A303203.P3524161475088366197

`record[A303204(A004442(n))]`
-/

namespace A303203.P3524161475088366197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P3524161475088366197

/-! ## A303203.P6164730530209243957

`record[A303204(A006257(n))]`
-/

namespace A303203.P6164730530209243957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P6164730530209243957

/-! ## A303203.P15191574770666256745

`record[A303204(A026741(n))]`
-/

namespace A303203.P15191574770666256745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P15191574770666256745

/-! ## A303203.P4701046431114316802

`record[A303204(A000265(n+1))]`
-/

namespace A303203.P4701046431114316802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P4701046431114316802

/-! ## A303203.P12158172735817545592

`record[A303204(A033999(n)+n)]`
-/

namespace A303203.P12158172735817545592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P12158172735817545592

/-! ## A303203.P11491315047225393073

`record[A303204(and(n, A033999(n)))]`
-/

namespace A303203.P11491315047225393073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P11491315047225393073

/-! ## A303203.P14946890057027295793

`record[A303204(n*Δ[A004526(n)])]`
-/

namespace A303203.P14946890057027295793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 ((n : ℤ) * (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P14946890057027295793

/-! ## A303203.P7909947061201713734

`record[A303204(n)^Δ[A004526(n)]]`
-/

namespace A303203.P7909947061201713734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303204 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P7909947061201713734

/-! ## A303203.P4995959526865866203

`record[A303204(A004443(2*n)/2)]`
-/

namespace A303203.P4995959526865866203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (SequenceMachineLib.roundAway ((A004443 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303203.P4995959526865866203

/-!
# A303204: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with ceiling(n/2).

The programs for A303204, there is no canonical definition to state claims against.
-/

/-! ## A303204.P15978285307606949529

`A291684(∑[n%2+n])`
-/

namespace A303204.P15978285307606949529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303204.P15978285307606949529

/-! ## A303204.P2714500545564922290

`A291684(A007590(n+1))`
-/

namespace A303204.P2714500545564922290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A007590 (n + 1)).toNat

end

end A303204.P2714500545564922290

/-! ## A303204.P2486541400007812233

`A291684(∑[n+1]-A008619(n))`
-/

namespace A303204.P2486541400007812233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008619 n).toNat

end

end A303204.P2486541400007812233

/-! ## A303204.P16003436123291342063

`A291684(A110654(n)+A000217(n))`
-/

namespace A303204.P16003436123291342063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A110654 n + A000217 n).toNat

end

end A303204.P16003436123291342063

/-! ## A303204.P5584226698923555433

`A291684(A253145(n)-A110654(n))`
-/

namespace A303204.P5584226698923555433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A253145 n - A110654 n).toNat

end

end A303204.P5584226698923555433

/-! ## A303204.P7424449719503813027

`A291684(A004525(n²)+n)`
-/

namespace A303204.P7424449719503813027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A303204.P7424449719503813027

/-! ## A303204.P15931559148621108005

`A291684(A110654(n²)+n)`
-/

namespace A303204.P15931559148621108005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A303204.P15931559148621108005

/-!
# A303205: Number of rectangles with squarefree area and dimensions p and |q-p| such that n = p + q and p < q.

The programs for A303205, there is no canonical definition to state claims against.
-/

/-! ## A303205.P7089490329414496120

`lcm(A066272(n+1), A080891(A061547(n)))`
-/

namespace A303205.P7089490329414496120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066272 (n + 1)) (A080891 (A061547 n).toNat)

end

end A303205.P7089490329414496120

/-! ## A303205.P8653466683275229563

`A066272(n+1)*A152822(A187829(n+1))`
-/

namespace A303205.P8653466683275229563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) * A152822 (A187829 (n + 1)).toNat

end

end A303205.P8653466683275229563

/-! ## A303205.P16676566920793428993

`A066272(A187829(n+1))*A237048(n+1)`
-/

namespace A303205.P16676566920793428993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A187829 (n + 1)).toNat * A237048 (n + 1)

end

end A303205.P16676566920793428993

/-! ## A303205.P1486619089139111867

`A066272(n+1)%A051752(A366801(n+3))`
-/

namespace A303205.P1486619089139111867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066272 (n + 1)) (A051752 (A366801 (n + 3)).toNat)

end

end A303205.P1486619089139111867

/-! ## A303205.P10237118852913895299

`C(A066272(n+1), A343088(n)!)`
-/

namespace A303205.P10237118852913895299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066272 (n + 1)).toNat (Nat.factorial (A343088 n).toNat)

end

end A303205.P10237118852913895299

/-!
# A303206: Number of partitions of n into two prime parts (p,q) such that |q-p| is squarefree.

The programs for A303206, there is no canonical definition to state claims against.
-/

/-! ## A303206.P10960064598897896448

`and(A117929(n+1), A234105(A284249(3*n+2)))`
-/

namespace A303206.P10960064598897896448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117929 (n + 1)) (A234105 (A284249 (3 * n + 2)).toNat)

end

end A303206.P10960064598897896448

/-! ## A303206.P4792542050162352682

`A051140(n)%A353849(A066207(n+1))`
-/

namespace A303206.P4792542050162352682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051140 n) (A353849 (A066207 (n + 1)).toNat)

end

end A303206.P4792542050162352682

/-! ## A303206.P14598215713759932964

`and(A117929(n+1), A220479(A256641(n+1)))`
-/

namespace A303206.P14598215713759932964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117929 (n + 1)) (A220479 (A256641 (n + 1)).toNat)

end

end A303206.P14598215713759932964

/-! ## A303206.P15913910472802582954

`A083025(or(A069829(2*n+3), A136735(3*n+4)))`
-/

namespace A303206.P15913910472802582954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (Int.lor (A069829 (2 * n + 3)) (A136735 (3 * n + 4))).toNat

end

end A303206.P15913910472802582954

/-! ## A303206.P18435965355223104391

`A084143(record[A006355(n)])`
-/

namespace A303206.P18435965355223104391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303206.P18435965355223104391

/-!
# A303208: Number of total dominating sets in the n X n rook graph.

The programs for A303208, there is no canonical definition to state claims against.
-/

/-! ## A303208.P12882339761948728024

`A384116(∑[4*(n+1)])`
-/

namespace A303208.P12882339761948728024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384116 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303208.P12882339761948728024

/-!
# A303211: Number of minimum total dominating sets in the n X n rook graph.

The programs for A303211, there is no canonical definition to state claims against.
-/

/-! ## A303211.P5873585981195718803

`2*A231797(n+1)`
-/

namespace A303211.P5873585981195718803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231797 (n + 1)

end

end A303211.P5873585981195718803

/-! ## A303211.P1437614284063753003

`Δ[2*∑[A231797(n)]]`
-/

namespace A303211.P1437614284063753003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303211.P1437614284063753003

/-! ## A303211.P4671354854846784056

`A231797(A000027(n+1))+A231797(n+1)`
-/

namespace A303211.P4671354854846784056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231797 (A000027 (n + 1)).toNat + A231797 (n + 1)

end

end A303211.P4671354854846784056

/-! ## A303211.P9755590534384827082

`2*A245405(∑[n+3]+1)`
-/

namespace A303211.P9755590534384827082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303211.P9755590534384827082

/-! ## A303211.P16616231730813182615

`2*A206823(∑[n+1])`
-/

namespace A303211.P16616231730813182615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303211.P16616231730813182615

/-!
# A303212: Number of minimum total dominating sets in the n X n rook complement graph.

The programs for A303212, the canonical program `A303212.P12818442115741467514` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303212 has offset 1).

The definition of A303212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303212.P2307690423135931927

`char[1]+6*∑[C(n, 2)]²`
-/

namespace A303212.P2307690423135931927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 6 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A303212.P2307690423135931927

namespace A303212

/-- `char[1]+6*∑[C(n, 2)]²` -/
def P2307690423135931927.Spec : Prop :=
  ∀ n, (P2307690423135931927.a n : ℤ) = A303212 (n + 1)

end A303212

/-! ## A303212.P15692972847093395920

`char[1]+6*C(n+1, 3)²`
-/

namespace A303212.P15692972847093395920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 6 * Nat.choose (n + 1) 3 ^ 2

end

end A303212.P15692972847093395920

namespace A303212

/-- `char[1]+6*C(n+1, 3)²` -/
def P15692972847093395920.Spec : Prop :=
  ∀ n, (P15692972847093395920.a n : ℤ) = A303212 (n + 1)

end A303212

/-! ## A303212.P1866001096319947076

`char[1]+(n^3-n)²/6`
-/

namespace A303212.P1866001096319947076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (((n ^ 3 : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 6

end

end A303212.P1866001096319947076

namespace A303212

/-- `char[1]+(n^3-n)²/6` -/
def P1866001096319947076.Spec : Prop :=
  ∀ n, P1866001096319947076.a n = (A303212 (n + 1) : ℚ)

end A303212

/-! ## A303212.P503217096782481171

`or(char[1], A179058(n+1))`
-/

namespace A303212.P503217096782481171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A179058 (n + 1))

end

end A303212.P503217096782481171

namespace A303212

/-- `or(char[1], A179058(n+1))` -/
def P503217096782481171.Spec : Prop :=
  ∀ n, P503217096782481171.a n = A303212 (n + 1)

end A303212

/-! ## A303212.P12818442115741467514

`xor(A063524(n), A179058(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A303212

/-- `xor(A063524(n), A179058(n+1))` -/
def P12818442115741467514.Spec : Prop :=
  ∀ n, P12818442115741467514.a n = A303212 (n + 1)

theorem P12818442115741467514.correct : P12818442115741467514.Spec := by
  intro n
  simp only [A303212, Nat.add_sub_cancel]

end A303212

/-! ## A303212.P11127808523004784597

`xor(A160831(n)-A160817(n), char[1])`
-/

namespace A303212.P11127808523004784597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160831 n - A160817 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303212.P11127808523004784597

namespace A303212

/-- `xor(A160831(n)-A160817(n), char[1])` -/
def P11127808523004784597.Spec : Prop :=
  ∀ n, P11127808523004784597.a n = A303212 (n + 1)

end A303212

/-! ## A303212.P4035967188602700697

`or(A161680(n)*A288961(n+1), char[1])`
-/

namespace A303212.P4035967188602700697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161680 n * A288961 (n + 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303212.P4035967188602700697

namespace A303212

/-- `or(A161680(n)*A288961(n+1), char[1])` -/
def P4035967188602700697.Spec : Prop :=
  ∀ n, P4035967188602700697.a n = A303212 (n + 1)

end A303212

/-! ## A303212.P15159923922781641625

`floor(A179058(n+1)+acot(A047993(n+1)))`
-/

namespace A303212.P15159923922781641625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179058 (n + 1) : ℝ) + SequenceMachineLib.acot (A047993 (n + 1) : ℝ)⌋

end

end A303212.P15159923922781641625

namespace A303212

/-- `floor(A179058(n+1)+acot(A047993(n+1)))` -/
def P15159923922781641625.Spec : Prop :=
  ∀ n, P15159923922781641625.a n = A303212 (n + 1)

end A303212

/-! ## A303212.P17651512300020586048

`gcd(A179058(n+1), A282516(∑[n+1]+n+1))`
-/

namespace A303212.P17651512300020586048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179058 (n + 1)) (A282516 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)))

end

end A303212.P17651512300020586048

namespace A303212

/-- `gcd(A179058(n+1), A282516(∑[n+1]+n+1))` -/
def P17651512300020586048.Spec : Prop :=
  ∀ n, (P17651512300020586048.a n : ℤ) = A303212 (n + 1)

end A303212

/-!
# A303214: Prime numbers whose average with the previous prime is not divisible by 2 or 3.

The programs for A303214, there is no canonical definition to state claims against.
-/

/-! ## A303214.P2919588530209819046

`p?[A007913(A001748(n+1)*A054541(n+1))]`
-/

namespace A303214.P2919588530209819046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001748 (n + 1) * A054541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303214.P2919588530209819046

/-! ## A303214.P5657982318385924253

`p?[A245093(n+1)+A192175(n+1)]`
-/

namespace A303214.P5657982318385924253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1) + A192175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303214.P5657982318385924253

/-!
# A303216: A(n,k) is the n-th Fibonacci number with exactly k prime factors (counted with multiplicity); square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A303216, there is no canonical definition to state claims against.
-/

/-! ## A303216.P12745601221537023389

`A000045(A303215(n+1))`
-/

namespace A303216.P12745601221537023389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A303215 (n + 1)).toNat

end

end A303216.P12745601221537023389

/-! ## A303216.P16417866805653383530

`A212804(A303215(n+1)+1)`
-/

namespace A303216.P16417866805653383530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A303215 (n + 1) + 1).toNat

end

end A303216.P16417866805653383530

/-! ## A303216.P18204785905763567577

`A020695(A303215(n+1)-3)`
-/

namespace A303216.P18204785905763567577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A303215 (n + 1) - 3).toNat

end

end A303216.P18204785905763567577

/-! ## A303216.P6941786788298521384

`A103609(2*A303215(n+1))`
-/

namespace A303216.P6941786788298521384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A303215 (n + 1)).toNat

end

end A303216.P6941786788298521384

/-! ## A303216.P8177193379179256298

`∑{d}[A303215(n+1), A007436(#)]`
-/

namespace A303216.P8177193379179256298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A303216.P8177193379179256298

/-! ## A303216.P4754891712891263070

`A001611(A303215(n+1))+A023443(n)-n`
-/

namespace A303216.P4754891712891263070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A303215 (n + 1)).toNat + (A023443 n - (n : ℤ))

end

end A303216.P4754891712891263070

/-! ## A303216.P6221748828099894401

`A103609(A303215(n+1)+A303215(n+1)+1)`
-/

namespace A303216.P6221748828099894401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A303215 (n + 1) + (A303215 (n + 1) + 1)).toNat

end

end A303216.P6221748828099894401

/-! ## A303216.P10816280284146745207

`A000071(A303215(n+1))-A008683(A007918(n))`
-/

namespace A303216.P10816280284146745207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A303215 (n + 1)).toNat - A008683 (A007918 n).toNat

end

end A303216.P10816280284146745207

/-!
# A303218: A(n,k) is the n-th Fibonacci number with exactly k distinct prime factors; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A303218, there is no canonical definition to state claims against.
-/

/-! ## A303218.P10486410980765628864

`A000045(A303217(n+1))`
-/

namespace A303218.P10486410980765628864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A303217 (n + 1)).toNat

end

end A303218.P10486410980765628864

/-! ## A303218.P4591368415546050088

`A212804(A303217(n+1)+1)`
-/

namespace A303218.P4591368415546050088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A303217 (n + 1) + 1).toNat

end

end A303218.P4591368415546050088

/-! ## A303218.P15464110511473135280

`A020695(A303217(n+1)-3)`
-/

namespace A303218.P15464110511473135280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A303217 (n + 1) - 3).toNat

end

end A303218.P15464110511473135280

/-! ## A303218.P11245307363111054510

`A053602(2*A303217(n+1))`
-/

namespace A303218.P11245307363111054510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A303217 (n + 1)).toNat

end

end A303218.P11245307363111054510

/-! ## A303218.P10601892614686262483

`A103609(2*A303217(n+1))`
-/

namespace A303218.P10601892614686262483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A303217 (n + 1)).toNat

end

end A303218.P10601892614686262483

/-! ## A303218.P600086260182655874

`A103609(A303217(n+1)+A303217(n+1)+1)`
-/

namespace A303218.P600086260182655874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A303217 (n + 1) + (A303217 (n + 1) + 1)).toNat

end

end A303218.P600086260182655874

/-! ## A303218.P14115142218925226857

`A001611(A303217(n+1))-A010146(n²+1+n)`
-/

namespace A303218.P14115142218925226857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A303217 (n + 1)).toNat - A010146 (n ^ 2 + 1 + n)

end

end A303218.P14115142218925226857

/-!
# A303219: a(n) = n for n <= 11. Thereafter a(n) = a(n-a(n-2)) + a(n-a(n-4)) + a(n-a(n-6)).

The programs for A303219, there is no canonical definition to state claims against.
-/

/-! ## A303219.P8914287554613763928

`∑[∏{d}[A236165(n)+A152163(n)-1, #²%3]]`
-/

namespace A303219.P8914287554613763928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n + (A152163 n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303219.P8914287554613763928

/-! ## A303219.P2162188677195598156

`∑[A242998(n+1)^val(A000096(n+6)-5, 4)]`
-/

namespace A303219.P2162188677195598156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242998 (n + 1) ^ SequenceMachineLib.valuation (A000096 (n + 6) - 5).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303219.P2162188677195598156

/-! ## A303219.P12295869315834269452

`∑[A040051(A007318(floor((n+1)/4)*floor(n/2)))]`
-/

namespace A303219.P12295869315834269452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (A007318 (⌊(n + 1 : ℚ) / 4⌋ * ⌊(n : ℚ) / 2⌋).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303219.P12295869315834269452

/-! ## A303219.P17332999423973564794

`∑[A000089(A187595(A008619(n)))]`
-/

namespace A303219.P17332999423973564794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A187595 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303219.P17332999423973564794

/-! ## A303219.P17784321121581363183

`∑[A334946(∑[A334946(3*n+2)]+1)]`
-/

namespace A303219.P17784321121581363183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334946 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334946 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303219.P17784321121581363183

/-!
# A303220: a(n) is the number of n-digit proper prime powers.

The programs for A303220, there is no canonical definition to state claims against.
-/

/-! ## A303220.P11712722130470897587

`Δ[A076048(n)]`
-/

namespace A303220.P11712722130470897587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303220.P11712722130470897587

/-! ## A303220.P2211963564584669211

`A076048(n+1)-A076048(n)`
-/

namespace A303220.P2211963564584669211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 (n + 1) - A076048 n

end

end A303220.P2211963564584669211

/-! ## A303220.P15159556123548965615

`Δ[A238815(n)-A006880(n)]`
-/

namespace A303220.P15159556123548965615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238815 n - A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303220.P15159556123548965615

/-! ## A303220.P951329652547245496

`Δ[A238815(n)-A090226(n+1)]`
-/

namespace A303220.P951329652547245496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238815 n - A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303220.P951329652547245496

/-! ## A303220.P13038050967879474892

`A304520(n+1)-Δ[A006880(n)]`
-/

namespace A303220.P13038050967879474892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304520 (n + 1) - (f1 (n + 1) - f1 n)

end

end A303220.P13038050967879474892

/-!
# A303221: Total area of all rectangles with dimensions p and p + q such that p and q are both squarefree, n = p + q and p <= q.

The programs for A303221, there is no canonical definition to state claims against.
-/

/-! ## A303221.P9938035760486107717

`(n+1)*A261985(n+1)`
-/

namespace A303221.P9938035760486107717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A261985 (n + 1)

end

end A303221.P9938035760486107717

/-! ## A303221.P12923051631037462321

`floor(A000027(n+1)/acot(A261985(n+1)))`
-/

namespace A303221.P12923051631037462321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) / SequenceMachineLib.acot (A261985 (n + 1) : ℝ)⌋

end

end A303221.P12923051631037462321

/-! ## A303221.P5939895938262867814

`(n+1)*(A262351(n+1)-A261927(n+1))`
-/

namespace A303221.P5939895938262867814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A262351 (n + 1) - A261927 (n + 1))

end

end A303221.P5939895938262867814

/-! ## A303221.P15507164502114353693

`(n+1)*((n+1)*A071068(n+1)-A261927(n+1))`
-/

namespace A303221.P15507164502114353693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A071068 (n + 1) - A261927 (n + 1))

end

end A303221.P15507164502114353693

/-! ## A303221.P611368930568045291

`(n+1)*((n+1)*A110654(A098235(n+1))-A261927(n+1))`
-/

namespace A303221.P611368930568045291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A110654 (A098235 (n + 1)).toNat - A261927 (n + 1))

end

end A303221.P611368930568045291

/-! ## A303221.P1376696028636671079

`(n+1)*((n+1)*A004526(A098235(n+1)+1)-A261927(n+1))`
-/

namespace A303221.P1376696028636671079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A004526 (A098235 (n + 1) + 1).toNat - A261927 (n + 1))

end

end A303221.P1376696028636671079

/-!
# A303223: Sum of the perimeters of the family of rectangles with dimensions p and q such that |q - p| is prime, n = p + q and p < q.

The programs for A303223, the canonical program `A303223.P3139631308333533051` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303223 has offset 1).

The definition of A303223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303223.P3139631308333533051

`2*(n+1)*A084360(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A303223

/-- `2*(n+1)*A084360(n+1)` -/
def P3139631308333533051.Spec : Prop :=
  ∀ n, P3139631308333533051.a n = A303223 (n + 1)

theorem P3139631308333533051.correct : P3139631308333533051.Spec := by
  intro n
  simp only [A303223, Nat.add_sub_cancel]

end A303223

/-! ## A303223.P3939990915184104980

`A084360(n+1)*A103517(n)`
-/

namespace A303223.P3939990915184104980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) * A103517 n

end

end A303223.P3939990915184104980

namespace A303223

/-- `A084360(n+1)*A103517(n)` -/
def P3939990915184104980.Spec : Prop :=
  ∀ n, P3939990915184104980.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P7960217613428830518

`(A005408(n)+1)*A084360(n+1)`
-/

namespace A303223.P7960217613428830518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1) * A084360 (n + 1)

end

end A303223.P7960217613428830518

namespace A303223

/-- `(A005408(n)+1)*A084360(n+1)` -/
def P7960217613428830518.Spec : Prop :=
  ∀ n, P7960217613428830518.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P4786665808063866912

`A005843(n+1)*A084360(n+1)`
-/

namespace A303223.P4786665808063866912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A084360 (n + 1)

end

end A303223.P4786665808063866912

namespace A303223

/-- `A005843(n+1)*A084360(n+1)` -/
def P4786665808063866912.Spec : Prop :=
  ∀ n, P4786665808063866912.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P11373171827938796718

`A084360(n+1)*A163300(n+1)`
-/

namespace A303223.P11373171827938796718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) * A163300 (n + 1)

end

end A303223.P11373171827938796718

namespace A303223

/-- `A084360(n+1)*A163300(n+1)` -/
def P11373171827938796718.Spec : Prop :=
  ∀ n, P11373171827938796718.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P4937456155790974686

`A084360(n+1)*A361871(n+1)`
-/

namespace A303223.P4937456155790974686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (n + 1) * A361871 (n + 1)

end

end A303223.P4937456155790974686

namespace A303223

/-- `A084360(n+1)*A361871(n+1)` -/
def P4937456155790974686.Spec : Prop :=
  ∀ n, P4937456155790974686.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P7636108312065440197

`(A004277(n)+2)*A084360(n+1)`
-/

namespace A303223.P7636108312065440197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A084360 (n + 1)

end

end A303223.P7636108312065440197

namespace A303223

/-- `(A004277(n)+2)*A084360(n+1)` -/
def P7636108312065440197.Spec : Prop :=
  ∀ n, P7636108312065440197.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P3187569045105838107

`A051755(n+2)*A084360(n+1)`
-/

namespace A303223.P3187569045105838107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) * A084360 (n + 1)

end

end A303223.P3187569045105838107

namespace A303223

/-- `A051755(n+2)*A084360(n+1)` -/
def P3187569045105838107.Spec : Prop :=
  ∀ n, P3187569045105838107.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P6345051680245219172

`(A062545(n)-1)*A084360(n+1)`
-/

namespace A303223.P6345051680245219172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062545 n - 1) * A084360 (n + 1)

end

end A303223.P6345051680245219172

namespace A303223

/-- `(A062545(n)-1)*A084360(n+1)` -/
def P6345051680245219172.Spec : Prop :=
  ∀ n, P6345051680245219172.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P18025326326465519633

`(A016789(n)-n)*A084360(n+1)`
-/

namespace A303223.P18025326326465519633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n - (n : ℤ)) * A084360 (n + 1)

end

end A303223.P18025326326465519633

namespace A303223

/-- `(A016789(n)-n)*A084360(n+1)` -/
def P18025326326465519633.Spec : Prop :=
  ∀ n, P18025326326465519633.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P15424634703000405443

`Δ[A002378(n)]*A084360(n+1)`
-/

namespace A303223.P15424634703000405443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084360 (n + 1)

end

end A303223.P15424634703000405443

namespace A303223

/-- `Δ[A002378(n)]*A084360(n+1)` -/
def P15424634703000405443.Spec : Prop :=
  ∀ n, P15424634703000405443.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P17017184445521472822

`Δ[A014206(n)]*A084360(n+1)`
-/

namespace A303223.P17017184445521472822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084360 (n + 1)

end

end A303223.P17017184445521472822

namespace A303223

/-- `Δ[A014206(n)]*A084360(n+1)` -/
def P17017184445521472822.Spec : Prop :=
  ∀ n, P17017184445521472822.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P2593452353895439951

`Δ[A027688(n)]*A084360(n+1)`
-/

namespace A303223.P2593452353895439951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084360 (n + 1)

end

end A303223.P2593452353895439951

namespace A303223

/-- `Δ[A027688(n)]*A084360(n+1)` -/
def P2593452353895439951.Spec : Prop :=
  ∀ n, P2593452353895439951.a n = A303223 (n + 1)

end A303223

/-! ## A303223.P3556065175943439184

`Δ[A027692(n)]*A084360(n+1)`
-/

namespace A303223.P3556065175943439184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084360 (n + 1)

end

end A303223.P3556065175943439184

namespace A303223

/-- `Δ[A027692(n)]*A084360(n+1)` -/
def P3556065175943439184.Spec : Prop :=
  ∀ n, P3556065175943439184.a n = A303223 (n + 1)

end A303223

/-!
# A303224: a(0)=0, a(1)=1; for n>1, a(n) = n*a(n-1) - 3*a(n-2).

The programs for A303224, the canonical program `A303224.P16569774258978008207` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303224 has offset 0).

The definition of A303224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-3*a(n-2)` (program `A303224.P16569774258978008207`, by `A303224.P16569774258978008207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303224.P16569774258978008207

`n*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303224

/-- `n*a(n-1)-3*a(n-2)` -/
def P16569774258978008207.Spec : Prop :=
  ∀ n, P16569774258978008207.a n = A303224 n

theorem P16569774258978008207.correct : P16569774258978008207.Spec := by
  intro n
  simp only [A303224]

end A303224

/-! ## A303224.P17946078963949646531

`A172471(n)+A004526(A020076(n))`
-/

namespace A303224.P17946078963949646531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n + A004526 (A020076 n).toNat

end

end A303224.P17946078963949646531

namespace A303224

/-- `A172471(n)+A004526(A020076(n))` -/
def P17946078963949646531.Spec : Prop :=
  ∀ n, P17946078963949646531.a n = A303224 n

end A303224

/-! ## A303224.P15111314360823051878

`A172471(n)+A004526(A020121(n)-1)`
-/

namespace A303224.P15111314360823051878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n + A004526 (A020121 n - 1).toNat

end

end A303224.P15111314360823051878

namespace A303224

/-- `A172471(n)+A004526(A020121(n)-1)` -/
def P15111314360823051878.Spec : Prop :=
  ∀ n, P15111314360823051878.a n = A303224 n

end A303224

/-! ## A303224.P12118847645785653590

`A004526(A172471(3*n)+A020121(n))`
-/

namespace A303224.P12118847645785653590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172471 (3 * n) + A020121 n).toNat

end

end A303224.P12118847645785653590

namespace A303224

/-- `A004526(A172471(3*n)+A020121(n))` -/
def P12118847645785653590.Spec : Prop :=
  ∀ n, P12118847645785653590.a n = A303224 n

end A303224

/-!
# A303225: Number of minimal total dominating sets in the n-Fibonacci cube graph.

The programs for A303225, there is no canonical definition to state claims against.
-/

/-! ## A303225.P13934011249540204750

`A360292(∏{p}[A000533(n)+1, ceil(n/#)])`
-/

namespace A303225.P13934011249540204750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360292 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌈(n : ℚ) / (p : ℚ)⌉).toNat

end

end A303225.P13934011249540204750

/-! ## A303225.P18381331992101547977

`A143976(A258861(n)+A232692(n))`
-/

namespace A303225.P18381331992101547977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143976 (A258861 n + A232692 n).toNat

end

end A303225.P18381331992101547977

/-!
# A303226: Number of minimal total dominating sets in the n-gear graph.

The programs for A303226, the canonical program `A303226.P6762589886093325207` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303226 has offset 1).

The definition of A303226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303226.P6762589886093325207

`Δ[A193744(n)]+Δ[A193744(n)]²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303226

/-- `Δ[A193744(n)]+Δ[A193744(n)]²` -/
def P6762589886093325207.Spec : Prop :=
  ∀ n, P6762589886093325207.a n = A303226 (n + 1)

theorem P6762589886093325207.correct : P6762589886093325207.Spec := by
  intro n
  simp only [A303226, Nat.add_sub_cancel]

end A303226

/-! ## A303226.P1125842262738318646

`A192932(n+1)+A001608(n+1)`
-/

namespace A303226.P1125842262738318646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192932 (n + 1) + A001608 (n + 1)

end

end A303226.P1125842262738318646

namespace A303226

/-- `A192932(n+1)+A001608(n+1)` -/
def P1125842262738318646.Spec : Prop :=
  ∀ n, P1125842262738318646.a n = A303226 (n + 1)

end A303226

/-! ## A303226.P17762337129947677308

`A300738(2*(n+1))+A001608(n+1)`
-/

namespace A303226.P17762337129947677308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300738 (2 * (n + 1)) + A001608 (n + 1)

end

end A303226.P17762337129947677308

namespace A303226

/-- `A300738(2*(n+1))+A001608(n+1)` -/
def P17762337129947677308.Spec : Prop :=
  ∀ n, P17762337129947677308.a n = A303226 (n + 1)

end A303226

/-! ## A303226.P7152834958363499214

`A192932(n+1)+A193744(n+1)-A193744(n)`
-/

namespace A303226.P7152834958363499214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192932 (n + 1) + (A193744 (n + 1) - A193744 n)

end

end A303226.P7152834958363499214

namespace A303226

/-- `A192932(n+1)+A193744(n+1)-A193744(n)` -/
def P7152834958363499214.Spec : Prop :=
  ∀ n, P7152834958363499214.a n = A303226 (n + 1)

end A303226

/-! ## A303226.P10327189201339623897

`(A001608(n+1)+A000034(2*n))*A001608(n+1)`
-/

namespace A303226.P10327189201339623897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001608 (n + 1) + A000034 (2 * n)) * A001608 (n + 1)

end

end A303226.P10327189201339623897

namespace A303226

/-- `(A001608(n+1)+A000034(2*n))*A001608(n+1)` -/
def P10327189201339623897.Spec : Prop :=
  ∀ n, P10327189201339623897.a n = A303226 (n + 1)

end A303226

/-! ## A303226.P16292839264903294796

`(A033999(2*n)+A001608(n+1))*A001608(n+1)`
-/

namespace A303226.P16292839264903294796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n) + A001608 (n + 1)) * A001608 (n + 1)

end

end A303226.P16292839264903294796

namespace A303226

/-- `(A033999(2*n)+A001608(n+1))*A001608(n+1)` -/
def P16292839264903294796.Spec : Prop :=
  ∀ n, P16292839264903294796.a n = A303226 (n + 1)

end A303226

/-! ## A303226.P17219028732707237

`(A177704(2*n)+A001608(n+1))*A001608(n+1)`
-/

namespace A303226.P17219028732707237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177704 (2 * n) + A001608 (n + 1)) * A001608 (n + 1)

end

end A303226.P17219028732707237

namespace A303226

/-- `(A177704(2*n)+A001608(n+1))*A001608(n+1)` -/
def P17219028732707237.Spec : Prop :=
  ∀ n, P17219028732707237.a n = A303226 (n + 1)

end A303226

/-! ## A303226.P13629675735432825126

`(A084338(n+1)-A000931(n))²+A084338(n+1)-A000931(n)`
-/

namespace A303226.P13629675735432825126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084338 (n + 1) - A000931 n) ^ 2 + (A084338 (n + 1) - A000931 n)

end

end A303226.P13629675735432825126

namespace A303226

/-- `(A084338(n+1)-A000931(n))²+A084338(n+1)-A000931(n)` -/
def P13629675735432825126.Spec : Prop :=
  ∀ n, P13629675735432825126.a n = A303226 (n + 1)

end A303226

/-!
# A303228: Number of minimal total dominating sets in the n-triangular grid graph.

The programs for A303228, there is no canonical definition to state claims against.
-/

/-! ## A303228.P6083399901386640028

`A267213(A267219(n))+A000041(n)^A001316(n)`
-/

namespace A303228.P6083399901386640028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267213 (A267219 n).toNat : ℚ) + (A000041 n : ℚ) ^ (A001316 n : ℤ)

end

end A303228.P6083399901386640028

/-!
# A303229: Number of minimal total dominating sets in the n X n white bishop graph.

The programs for A303229, there is no canonical definition to state claims against.
-/

/-! ## A303229.P14891677843538652415

`A321674(n+2)/A303230(n+2)`
-/

namespace A303229.P14891677843538652415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321674 (n + 2) : ℚ) / (A303230 (n + 2) : ℚ)

end

end A303229.P14891677843538652415

/-!
# A303230: Number of minimal total dominating sets in the n X n black bishop graph.

The programs for A303230, there is no canonical definition to state claims against.
-/

/-! ## A303230.P1127829701706356786

`(A043937(A073515(n+1)+1)+1)%(n+1)!`
-/

namespace A303230.P1127829701706356786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043937 (A073515 (n + 1) + 1).toNat + 1) (Nat.factorial (n + 1) : ℤ)

end

end A303230.P1127829701706356786

/-! ## A303230.P13614715992725946834

`A007530(A289539(n))%A047863(n)`
-/

namespace A303230.P13614715992725946834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007530 (A289539 n).toNat) (A047863 n)

end

end A303230.P13614715992725946834

/-!
# A303231: Total volume of all rectangular prisms with dimensions q, p+q and |q-p| such that p and q are prime, n = p+q and p < q.

The programs for A303231, there is no canonical definition to state claims against.
-/

/-! ## A303231.P1653481110088116645

`(n+1)*A303232(n+1)`
-/

namespace A303231.P1653481110088116645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303232 (n + 1)

end

end A303231.P1653481110088116645

/-! ## A303231.P16197312435384494345

`A303232(n+1)*A326178(n)`
-/

namespace A303231.P16197312435384494345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303232 (n + 1) * A326178 n

end

end A303231.P16197312435384494345

/-! ## A303231.P3222315950180494242

`(n+1)*A172031(n)%A004739(A088013(n))`
-/

namespace A303231.P3222315950180494242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A172031 n) (A004739 (A088013 n).toNat)

end

end A303231.P3222315950180494242

/-! ## A303231.P13957539354048631237

`(n+1)*A001276(A304201(n))%A099517(n)`
-/

namespace A303231.P13957539354048631237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A001276 (A304201 n).toNat) (A099517 n)

end

end A303231.P13957539354048631237

/-! ## A303231.P896295969007591810

`(n+1)*A003862(n+1)%A003876(A000010(n+1))`
-/

namespace A303231.P896295969007591810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A003862 (n + 1)) (A003876 (A000010 (n + 1)).toNat)

end

end A303231.P896295969007591810

/-!
# A303232: Total area of the family of rectangles with dimensions q and |q-p| such that p and q are prime, n = p + q and p < q.

The programs for A303232, there is no canonical definition to state claims against.
-/

/-! ## A303232.P17647300260439865975

`A303231(n+1)/(n+1)`
-/

namespace A303232.P17647300260439865975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303231 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A303232.P17647300260439865975

/-! ## A303232.P5873270600398264075

`A172031(n)%A004739(A088013(n))`
-/

namespace A303232.P5873270600398264075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172031 n) (A004739 (A088013 n).toNat)

end

end A303232.P5873270600398264075

/-! ## A303232.P15995983843525610764

`A001276(A304201(n))%A099517(n)`
-/

namespace A303232.P15995983843525610764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001276 (A304201 n).toNat) (A099517 n)

end

end A303232.P15995983843525610764

/-! ## A303232.P15684286469051726886

`A327070(n)%A165482(A081567(n))`
-/

namespace A303232.P15684286469051726886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327070 n) (A165482 (A081567 n).toNat)

end

end A303232.P15684286469051726886

/-! ## A303232.P10693636946424460017

`A028422(A155069(n)+A002321(n+1))`
-/

namespace A303232.P10693636946424460017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A155069 n + A002321 (n + 1)).toNat

end

end A303232.P10693636946424460017

/-!
# A303234: Numbers of the form x*(x+1)/2 + 2^y with x and y nonnegative integers.

The programs for A303234, there is no canonical definition to state claims against.
-/

/-! ## A303234.P9208923679614816366

`lt[A116371(n+1), dr(A006258(n+1))]`
-/

namespace A303234.P9208923679614816366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006258 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A303234.P9208923679614816366

/-!
# A303236: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303236, there is no canonical definition to state claims against.
-/

/-! ## A303236.P3848462398840535587

`A303242(∑[4*n]+1)`
-/

namespace A303236.P3848462398840535587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303236.P3848462398840535587

/-! ## A303236.P14868304698268443344

`A303242(A001844(n))+char[10]`
-/

namespace A303236.P14868304698268443344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303236.P14868304698268443344

/-! ## A303236.P4367614840570102147

`A055642(n)*A303242(A001844(n))`
-/

namespace A303236.P4367614840570102147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A303242 (A001844 n).toNat

end

end A303236.P4367614840570102147

/-! ## A303236.P14310315593206144797

`A208615(n)*A303242(A001844(n))`
-/

namespace A303236.P14310315593206144797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 n * A303242 (A001844 n).toNat

end

end A303236.P14310315593206144797

/-! ## A303236.P7877113840289348997

`A284558(n)*A303242(A001844(n))`
-/

namespace A303236.P7877113840289348997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284558 n * A303242 (A001844 n).toNat

end

end A303236.P7877113840289348997

/-!
# A303237: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303237, there is no canonical definition to state claims against.
-/

/-! ## A303237.P13664637644328549668

`A303242(∑[n+3]+1)`
-/

namespace A303237.P13664637644328549668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303237.P13664637644328549668

/-! ## A303237.P1942615110108633011

`record[A303242(A237519(n+1))]`
-/

namespace A303237.P1942615110108633011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303237.P1942615110108633011

/-! ## A303237.P4277474390936188621

`A303242(A000124(n+3)-3)+char[17]`
-/

namespace A303237.P4277474390936188621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A000124 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303237.P4277474390936188621

/-! ## A303237.P5916163806606580181

`record[A303242(n+1)/A027465(n+2)]`
-/

namespace A303237.P5916163806606580181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303242 (n + 1) : ℚ) / (A027465 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303237.P5916163806606580181

/-! ## A303237.P12366064813158929387

`record[A303242(n+1)/A059298(n+2)]`
-/

namespace A303237.P12366064813158929387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303242 (n + 1) : ℚ) / (A059298 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303237.P12366064813158929387

/-!
# A303238: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303238, there is no canonical definition to state claims against.
-/

/-! ## A303238.P10584305071463469028

`A303242(∑[n+4]+3)`
-/

namespace A303238.P10584305071463469028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303238.P10584305071463469028

/-! ## A303238.P2352369387893038757

`xor(1, xor(1, A303242(A027379(n+2))))`
-/

namespace A303238.P2352369387893038757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A303242 (A027379 (n + 2)).toNat))

end

end A303238.P2352369387893038757

/-! ## A303238.P9548927329615878144

`A303242(Δ[A034857(n+1)])+char[45]`
-/

namespace A303238.P9548927329615878144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303238.P9548927329615878144

/-! ## A303238.P12794460754917751213

`or(A111332(n), A303242(A055998(n+2)))`
-/

namespace A303238.P12794460754917751213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111332 n) (A303242 (A055998 (n + 2)).toNat)

end

end A303238.P12794460754917751213

/-! ## A303238.P13558294327125567154

`A007318(C(2, n))*A303242(A027379(n+2))`
-/

namespace A303238.P13558294327125567154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303242 (A027379 (n + 2)).toNat

end

end A303238.P13558294327125567154

/-!
# A303239: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303239, there is no canonical definition to state claims against.
-/

/-! ## A303239.P3902982154055261701

`A303242(∑[round(1/acot(n))+5]+5)`
-/

namespace A303239.P3902982154055261701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A303239.P3902982154055261701

/-! ## A303239.P14796888114285023474

`A303242(Δ[A264443(n)])`
-/

namespace A303239.P14796888114285023474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (f1 (n + 1) - f1 n).toNat

end

end A303239.P14796888114285023474

/-! ## A303239.P1186593928278815622

`A303242(A046691(n+3))`
-/

namespace A303239.P1186593928278815622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A046691 (n + 3)).toNat

end

end A303239.P1186593928278815622

/-! ## A303239.P1621600325811397560

`A303242(A056115(n)+11)`
-/

namespace A303239.P1621600325811397560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A056115 n + 11).toNat

end

end A303239.P1621600325811397560

/-! ## A303239.P15388444116221456980

`A303242(eq[2, A092921(n)])`
-/

namespace A303239.P15388444116221456980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303239.P15388444116221456980

/-!
# A303240: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303240, there is no canonical definition to state claims against.
-/

/-! ## A303240.P839985963203411713

`A303242(A052905(n+3))`
-/

namespace A303240.P839985963203411713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A052905 (n + 3)).toNat

end

end A303240.P839985963203411713

/-! ## A303240.P5513169903664233700

`A303242(A056119(n)+16)`
-/

namespace A303240.P5513169903664233700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A056119 n + 16).toNat

end

end A303240.P5513169903664233700

/-! ## A303240.P11387401654641770126

`A303242(eq[3, A219347(n)])`
-/

namespace A303240.P11387401654641770126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303240.P11387401654641770126

/-! ## A303240.P14349939028360792093

`A303242(eq[5, A152157(n)])`
-/

namespace A303240.P14349939028360792093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303240.P14349939028360792093

/-! ## A303240.P9756443776333735108

`A303242(eq[5, A193592(n)])`
-/

namespace A303240.P9756443776333735108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303240.P9756443776333735108

/-!
# A303241: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303241, there is no canonical definition to state claims against.
-/

/-! ## A303241.P3487134033281965541

`A303242(A055999(n+4))`
-/

namespace A303241.P3487134033281965541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A055999 (n + 4)).toNat

end

end A303241.P3487134033281965541

/-! ## A303241.P3278026932579372647

`A303242(eq[4, A219347(n)])`
-/

namespace A303241.P3278026932579372647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303241.P3278026932579372647

/-! ## A303241.P13506203665043040856

`A303242(eq[5, A332954(n)])`
-/

namespace A303241.P13506203665043040856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303241.P13506203665043040856

/-! ## A303241.P14793699969017396336

`A303242(eq[6, A193592(n)])`
-/

namespace A303241.P14793699969017396336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303241.P14793699969017396336

/-! ## A303241.P5208094657731127192

`A303242(eq[7, A152157(n)])`
-/

namespace A303241.P5208094657731127192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303241.P5208094657731127192

/-!
# A303243: Number of 3 X n 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303243, there is no canonical definition to state claims against.
-/

/-! ## A303243.P2541255490984285708

`A303242(∑[n+2]+4)`
-/

namespace A303243.P2541255490984285708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303243.P2541255490984285708

/-! ## A303243.P11546432637639125575

`lcm(2, A303242(A167614(n+1)))`
-/

namespace A303243.P11546432637639125575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303242 (A167614 (n + 1)).toNat)

end

end A303243.P11546432637639125575

/-! ## A303243.P5743214664079443994

`A303242(A000124(n+2)+2)+char[32]`
-/

namespace A303243.P5743214664079443994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303243.P5743214664079443994

/-! ## A303243.P16363314328097341321

`A303242(A167614(n+1))+A185255(n)`
-/

namespace A303243.P16363314328097341321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A167614 (n + 1)).toNat + A185255 n

end

end A303243.P16363314328097341321

/-! ## A303243.P8852593826100911655

`A303242(A167614(n+1))+A034569(n+1)`
-/

namespace A303243.P8852593826100911655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A167614 (n + 1)).toNat + A034569 (n + 1)

end

end A303243.P8852593826100911655

/-!
# A303244: Number of 4Xn 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303244, there is no canonical definition to state claims against.
-/

/-! ## A303244.P14088420621136387466

`A303242(∑[n+3]+7)`
-/

namespace A303244.P14088420621136387466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303244.P14088420621136387466

/-! ## A303244.P13898609939769857959

`A303242(A052905(n)+9)+char[22]`
-/

namespace A303244.P13898609939769857959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303244.P13898609939769857959

/-! ## A303244.P13746939202802196776

`A303242(A167614(n+2)+1)+char[18]`
-/

namespace A303244.P13746939202802196776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303244.P13746939202802196776

/-! ## A303244.P6362110583703967677

`A007318(C(2, n))*A303242(A167614(n+2)+1)`
-/

namespace A303244.P6362110583703967677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303242 (A167614 (n + 2) + 1).toNat

end

end A303244.P6362110583703967677

/-! ## A303244.P1958205030303244180

`A007318(C(n+1, 2))*A303242(A052905(n)+9)`
-/

namespace A303244.P1958205030303244180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 1) 2) * A303242 (A052905 n + 9).toNat

end

end A303244.P1958205030303244180

/-!
# A303245: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303245, there is no canonical definition to state claims against.
-/

/-! ## A303245.P5096960016469419095

`A303242(∑[n+4]+11)`
-/

namespace A303245.P5096960016469419095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303245.P5096960016469419095

/-! ## A303245.P8273402090796546761

`A303242(A155212(n)+13)+char[17]`
-/

namespace A303245.P8273402090796546761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A155212 n + 13).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303245.P8273402090796546761

/-! ## A303245.P2356931778611268876

`A303242(A000124(n+4)+4)+C(n, 30)`
-/

namespace A303245.P2356931778611268876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A000124 (n + 4) + 4).toNat + (Nat.choose n 30 : ℤ)

end

end A303245.P2356931778611268876

/-! ## A303245.P10671674653806176268

`(A303242(A056000(n)+15)^(1-1/2))²`
-/

namespace A303245.P10671674653806176268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A303242 (A056000 n + 15).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)) ^ 2

end

end A303245.P10671674653806176268

/-! ## A303245.P14022490396573438460

`A303242(A155212(n)+13)%A000108(n+9)`
-/

namespace A303245.P14022490396573438460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303242 (A155212 n + 13).toNat) (A000108 (n + 9))

end

end A303245.P14022490396573438460

/-!
# A303246: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303246, there is no canonical definition to state claims against.
-/

/-! ## A303246.P4868394637374047121

`A303242(A056115(n)+21)`
-/

namespace A303246.P4868394637374047121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A056115 n + 21).toNat

end

end A303246.P4868394637374047121

/-! ## A303246.P2988403105391353488

`A303242(∑[A020710(n)]+16)`
-/

namespace A303246.P2988403105391353488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A303246.P2988403105391353488

/-! ## A303246.P16249083143607620564

`A303242(A167499(n+4)+1)`
-/

namespace A303246.P16249083143607620564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A167499 (n + 4) + 1).toNat

end

end A303246.P16249083143607620564

/-! ## A303246.P4053640525442874663

`A303242(A167487(n+4)-1)`
-/

namespace A303246.P4053640525442874663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A167487 (n + 4) - 1).toNat

end

end A303246.P4053640525442874663

/-! ## A303246.P2872271749216588805

`A303242(A000124(n+5)+5)`
-/

namespace A303246.P2872271749216588805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A000124 (n + 5) + 5).toNat

end

end A303246.P2872271749216588805

/-!
# A303247: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303247, there is no canonical definition to state claims against.
-/

/-! ## A303247.P1369362878437703269

`A303242(A167487(n+5))`
-/

namespace A303247.P1369362878437703269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A167487 (n + 5)).toNat

end

end A303247.P1369362878437703269

/-! ## A303247.P3854083204838846406

`A303242(A056119(n)+28)`
-/

namespace A303247.P3854083204838846406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A056119 n + 28).toNat

end

end A303247.P3854083204838846406

/-! ## A303247.P995067116977902532

`A303242(eq[11, A066657(n)])`
-/

namespace A303247.P995067116977902532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303247.P995067116977902532

/-! ## A303247.P9213446759921448783

`A303242(A000124(n+6)+6)`
-/

namespace A303247.P9213446759921448783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A000124 (n + 6) + 6).toNat

end

end A303247.P9213446759921448783

/-! ## A303247.P9054307804723775678

`A303242(A052905(n+3)+12)`
-/

namespace A303247.P9054307804723775678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (A052905 (n + 3) + 12).toNat

end

end A303247.P9054307804723775678

/-!
# A303248: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303248, there is no canonical definition to state claims against.
-/

/-! ## A303248.P13758659140381254471

`A303254(∑[4*n]+1)`
-/

namespace A303248.P13758659140381254471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303248.P13758659140381254471

/-! ## A303248.P2106955446890426897

`A308975(n)+A303254(A001844(n))`
-/

namespace A303248.P2106955446890426897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A303254 (A001844 n).toNat

end

end A303248.P2106955446890426897

/-! ## A303248.P13616576074352790256

`A326590(n)+A303254(A001844(n))`
-/

namespace A303248.P13616576074352790256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 n + A303254 (A001844 n).toNat

end

end A303248.P13616576074352790256

/-! ## A303248.P4344124360186303992

`A057427(n)*A303254(A001844(n))`
-/

namespace A303248.P4344124360186303992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A303254 (A001844 n).toNat

end

end A303248.P4344124360186303992

/-! ## A303248.P1796994120624909263

`A007318(A020639(2*(n+1)))+A303254(A001844(n))-1`
-/

namespace A303248.P1796994120624909263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat + (A303254 (A001844 n).toNat - 1)

end

end A303248.P1796994120624909263

/-!
# A303249: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303249, there is no canonical definition to state claims against.
-/

/-! ## A303249.P6249429610247677737

`A303254(∑[n+3]+1)`
-/

namespace A303249.P6249429610247677737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303249.P6249429610247677737

/-! ## A303249.P16870422868060415073

`record[Δ[A303254(A130297(n+1))]]`
-/

namespace A303249.P16870422868060415073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303249.P16870422868060415073

/-! ## A303249.P17498541393382395279

`record[gcd(A303254(n+1), A327072(n))]`
-/

namespace A303249.P17498541393382395279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303254 (n + 1)) (A327072 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303249.P17498541393382395279

/-! ## A303249.P13470594063013366725

`record[A303254(A061579(A000124(n)))]`
-/

namespace A303249.P13470594063013366725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A061579 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303249.P13470594063013366725

/-! ## A303249.P11880521022381194463

`A303254(A034856(n+2))+A000007(n+1)`
-/

namespace A303249.P11880521022381194463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A303249.P11880521022381194463

/-!
# A303250: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303250, there is no canonical definition to state claims against.
-/

/-! ## A303250.P13974531083480112301

`A303254(A141214(n+1))`
-/

namespace A303250.P13974531083480112301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A141214 (n + 1)).toNat

end

end A303250.P13974531083480112301

/-! ## A303250.P8713133006569976282

`A303254(A027379(n+2))`
-/

namespace A303250.P8713133006569976282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A027379 (n + 2)).toNat

end

end A303250.P8713133006569976282

/-! ## A303250.P2369294862436587854

`A303254(A055998(n+2))`
-/

namespace A303250.P2369294862436587854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A055998 (n + 2)).toNat

end

end A303250.P2369294862436587854

/-! ## A303250.P7415671429131028304

`A303254(A155212(n)+5)`
-/

namespace A303250.P7415671429131028304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A155212 n + 5).toNat

end

end A303250.P7415671429131028304

/-! ## A303250.P815406563649790196

`A303254(A056000(n)+7)`
-/

namespace A303250.P815406563649790196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A056000 n + 7).toNat

end

end A303250.P815406563649790196

/-!
# A303251: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303251, there is no canonical definition to state claims against.
-/

/-! ## A303251.P8046145637686155900

`A303254(Δ[A264443(n)])`
-/

namespace A303251.P8046145637686155900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (f1 (n + 1) - f1 n).toNat

end

end A303251.P8046145637686155900

/-! ## A303251.P12519619050842778009

`A303254(eq[3, A152157(n)])`
-/

namespace A303251.P12519619050842778009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303251.P12519619050842778009

/-! ## A303251.P5355300132295164594

`A303254(eq[4, A193592(n)])`
-/

namespace A303251.P5355300132295164594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303251.P5355300132295164594

/-! ## A303251.P5507557154851312338

`A303254(Δ[A023545(n+1)])`
-/

namespace A303251.P5507557154851312338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (f1 (n + 1) - f1 n).toNat

end

end A303251.P5507557154851312338

/-! ## A303251.P1785794087792483730

`A303254(eq[5, A200370(n+1)])`
-/

namespace A303251.P1785794087792483730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303251.P1785794087792483730

/-!
# A303252: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303252, there is no canonical definition to state claims against.
-/

/-! ## A303252.P17473432013120736845

`A303254(A052905(n+3))`
-/

namespace A303252.P17473432013120736845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A052905 (n + 3)).toNat

end

end A303252.P17473432013120736845

/-! ## A303252.P14541481580809609006

`A303254(eq[3, A219347(n)])`
-/

namespace A303252.P14541481580809609006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303252.P14541481580809609006

/-! ## A303252.P5724181611336293314

`A303254(eq[5, A193592(n)])`
-/

namespace A303252.P5724181611336293314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303252.P5724181611336293314

/-! ## A303252.P14720168664244549317

`A303254(eq[6, A200370(n+1)])`
-/

namespace A303252.P14720168664244549317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303252.P14720168664244549317

/-! ## A303252.P5485023344125681519

`A303254(eq[8, A185782(n+1)])`
-/

namespace A303252.P5485023344125681519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303252.P5485023344125681519

/-!
# A303253: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303253, there is no canonical definition to state claims against.
-/

/-! ## A303253.P5131761861481582093

`A303254(A055999(n+4))`
-/

namespace A303253.P5131761861481582093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A055999 (n + 4)).toNat

end

end A303253.P5131761861481582093

/-! ## A303253.P13828651305929888165

`A303254(eq[4, A219347(n)])`
-/

namespace A303253.P13828651305929888165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303253.P13828651305929888165

/-! ## A303253.P2443466942070485932

`A303254(eq[6, A193592(n)])`
-/

namespace A303253.P2443466942070485932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303253.P2443466942070485932

/-! ## A303253.P13561281589412446417

`A303254(A052905(n+4)-1)`
-/

namespace A303253.P13561281589412446417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A052905 (n + 4) - 1).toNat

end

end A303253.P13561281589412446417

/-! ## A303253.P17364815388648961788

`A303254(eq[7, A200370(n+1)])`
-/

namespace A303253.P17364815388648961788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303253.P17364815388648961788

/-!
# A303255: "Wondrous representation" [left to right] of positive integer n, n >= 2.

The programs for A303255, there is no canonical definition to state claims against.
-/

/-! ## A303255.P17052559430368983273

`A176999(n+2)+A002275(A006577(n+2))`
-/

namespace A303255.P17052559430368983273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176999 (n + 2) + A002275 (A006577 (n + 2)).toNat

end

end A303255.P17052559430368983273

/-!
# A303256: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303256, there is no canonical definition to state claims against.
-/

/-! ## A303256.P12849920948533591675

`A303254(A167499(n+3))`
-/

namespace A303256.P12849920948533591675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A167499 (n + 3)).toNat

end

end A303256.P12849920948533591675

/-! ## A303256.P4117764236320455134

`A303254(A155212(n)+13)`
-/

namespace A303256.P4117764236320455134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A155212 n + 13).toNat

end

end A303256.P4117764236320455134

/-! ## A303256.P4508734242354360041

`A303254(A056000(n)+15)`
-/

namespace A303256.P4508734242354360041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A056000 n + 15).toNat

end

end A303256.P4508734242354360041

/-! ## A303256.P14437090984383765459

`A303254(A141214(n+1)+8)`
-/

namespace A303256.P14437090984383765459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A141214 (n + 1) + 8).toNat

end

end A303256.P14437090984383765459

/-! ## A303256.P9237756146688801740

`A303254(A027379(n+2)+8)`
-/

namespace A303256.P9237756146688801740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A027379 (n + 2) + 8).toNat

end

end A303256.P9237756146688801740

/-!
# A303257: Number of 6 X n 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303257, there is no canonical definition to state claims against.
-/

/-! ## A303257.P7414499419443138249

`A303254(A056115(n)+21)`
-/

namespace A303257.P7414499419443138249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A056115 n + 21).toNat

end

end A303257.P7414499419443138249

/-! ## A303257.P2579342465945994017

`A303254(A167614(n+4)+3)`
-/

namespace A303257.P2579342465945994017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A167614 (n + 4) + 3).toNat

end

end A303257.P2579342465945994017

/-! ## A303257.P1341868966379418286

`A303254(eq[6, A130270(n+1)])`
-/

namespace A303257.P1341868966379418286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303257.P1341868966379418286

/-! ## A303257.P15136107877128069883

`A303254(eq[7, A131818(n+1)])`
-/

namespace A303257.P15136107877128069883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303257.P15136107877128069883

/-! ## A303257.P13377274956564246958

`A303254(eq[10, A185782(n+1)]-(2*n+1))`
-/

namespace A303257.P13377274956564246958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A303257.P13377274956564246958

/-!
# A303258: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303258, there is no canonical definition to state claims against.
-/

/-! ## A303258.P2811147300113047694

`A303254(A056119(n)+28)`
-/

namespace A303258.P2811147300113047694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A056119 n + 28).toNat

end

end A303258.P2811147300113047694

/-! ## A303258.P17989961793833698477

`A303254(eq[11, A066657(n)])`
-/

namespace A303258.P17989961793833698477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303258.P17989961793833698477

/-! ## A303258.P9738564160938345996

`A303254(eq[6, A002262(n)]+1)`
-/

namespace A303258.P9738564160938345996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303258.P9738564160938345996

/-! ## A303258.P9363803295617397183

`A303254(eq[8, A131818(n+1)])`
-/

namespace A303258.P9363803295617397183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303258.P9363803295617397183

/-! ## A303258.P216090488655215935

`A303254(A000124(n+7)-(n+1))`
-/

namespace A303258.P216090488655215935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A303258.P216090488655215935

/-!
# A303259: Number of ordered rooted trees with n non-root nodes such that the maximal outdegree equals ceiling(n/2).

The programs for A303259, the canonical program `A303259.P6745834928257893132` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303259 has offset 0).

The definition of A303259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303259.P6745834928257893132

`A046899(A007590(n))-A142150(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A303259

/-- `A046899(A007590(n))-A142150(n)` -/
def P6745834928257893132.Spec : Prop :=
  ∀ n, P6745834928257893132.a n = A303259 n

theorem P6745834928257893132.correct : P6745834928257893132.Spec := by
  intro n
  simp only [A303259]

end A303259

/-! ## A303259.P9089185771240160217

`A203717(A000982(A000007(n)+n))`
-/

namespace A303259.P9089185771240160217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203717 (A000982 (A000007 n + (n : ℤ)).toNat).toNat

end

end A303259.P9089185771240160217

namespace A303259

/-- `A203717(A000982(A000007(n)+n))` -/
def P9089185771240160217.Spec : Prop :=
  ∀ n, P9089185771240160217.a n = A303259 n

end A303259

/-! ## A303259.P8581702668291940107

`A203717(A179865(n+1)-A004526(n))`
-/

namespace A303259.P8581702668291940107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203717 (A179865 (n + 1) - A004526 n).toNat

end

end A303259.P8581702668291940107

namespace A303259

/-- `A203717(A179865(n+1)-A004526(n))` -/
def P8581702668291940107.Spec : Prop :=
  ∀ n, P8581702668291940107.a n = A303259 n

end A303259

/-! ## A303259.P14454156474215107078

`A203717(A000982(n)^(1-A000007(n)))`
-/

namespace A303259.P14454156474215107078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203717 (SequenceMachineLib.roundAway ((A000982 n : ℚ) ^ (1 - A000007 n : ℤ))).toNat

end

end A303259.P14454156474215107078

namespace A303259

/-- `A203717(A000982(n)^(1-A000007(n)))` -/
def P14454156474215107078.Spec : Prop :=
  ∀ n, P14454156474215107078.a n = A303259 n

end A303259

/-! ## A303259.P12946862984395596399

`A203717(A028310(A004525(n²)))`
-/

namespace A303259.P12946862984395596399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203717 (A028310 (A004525 (n ^ 2)).toNat).toNat

end

end A303259.P12946862984395596399

namespace A303259

/-- `A203717(A028310(A004525(n²)))` -/
def P12946862984395596399.Spec : Prop :=
  ∀ n, P12946862984395596399.a n = A303259 n

end A303259

/-! ## A303259.P935176492576957925

`A065941(A001105(n))-A142150(n)`
-/

namespace A303259.P935176492576957925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A001105 n).toNat - A142150 n

end

end A303259.P935176492576957925

namespace A303259

/-- `A065941(A001105(n))-A142150(n)` -/
def P935176492576957925.Spec : Prop :=
  ∀ n, P935176492576957925.a n = A303259 n

end A303259

/-!
# A303260: Determinant of n X n matrix A[i,j] = (j - i - 1 mod n) + [i=j], i.e., the circulant having (n, 0, 1, ..., n-2) as first row.

The programs for A303260, there is no canonical definition to state claims against.
-/

/-! ## A303260.P15016408922791174402

`gcd(A037205(n), A058128(n+1))*A152947(n+1)`
-/

namespace A303260.P15016408922791174402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A037205 n) (A058128 (n + 1)) : ℤ) * A152947 (n + 1)

end

end A303260.P15016408922791174402

/-! ## A303260.P17433472523121402113

`(A058128(n+1)-A060072(n+1))*A152947(n+1)`
-/

namespace A303260.P17433472523121402113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058128 (n + 1) - A060072 (n + 1)) * A152947 (n + 1)

end

end A303260.P17433472523121402113

/-!
# A303263: Indices of primes in tribonacci sequence A000073.

The programs for A303263, there is no canonical definition to state claims against.
-/

/-! ## A303263.P14393223982754814968

`A092835(n+1)+1`
-/

namespace A303263.P14393223982754814968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092835 (n + 1) + 1

end

end A303263.P14393223982754814968

/-! ## A303263.P8970000087519798879

`A122991(n+1)+2`
-/

namespace A303263.P8970000087519798879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122991 (n + 1) + 2

end

end A303263.P8970000087519798879

/-! ## A303263.P1801549193699569441

`A020725(A092835(n+1))`
-/

namespace A303263.P1801549193699569441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A092835 (n + 1)).toNat

end

end A303263.P1801549193699569441

/-! ## A303263.P3259065950775105139

`A009056(A122991(n+1))`
-/

namespace A303263.P3259065950775105139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A122991 (n + 1)).toNat

end

end A303263.P3259065950775105139

/-!
# A303264: Indices of primes in tetranacci sequence A000078.

The programs for A303264, there is no canonical definition to state claims against.
-/

/-! ## A303264.P5122837470559438862

`A104534(n+1)+2`
-/

namespace A303264.P5122837470559438862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104534 (n + 1) + 2

end

end A303264.P5122837470559438862

/-! ## A303264.P16196846227556363260

`A009056(A104534(n+1))`
-/

namespace A303264.P16196846227556363260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A104534 (n + 1)).toNat

end

end A303264.P16196846227556363260

/-!
# A303269: Sum of squares of odd digits minus sum of squares of even digits of n.

The programs for A303269, the canonical program `A303269.P14236862448181407010` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303269 has offset 0).

The definition of A303269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303269.P14236862448181407010

`∑{digits}[n, A181983(#²)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303269

/-- `∑{digits}[n, A181983(#²)]` -/
def P14236862448181407010.Spec : Prop :=
  ∀ n, P14236862448181407010.a n = A303269 n

theorem P14236862448181407010.correct : P14236862448181407010.Spec := by
  intro n
  simp only [A303269]

end A303269

/-! ## A303269.P1481728429206057110

`∑{digits}[n, #*A181983(#)]`
-/

namespace A303269.P1481728429206057110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A181983 x).sum

end

end A303269.P1481728429206057110

namespace A303269

/-- `∑{digits}[n, #*A181983(#)]` -/
def P1481728429206057110.Spec : Prop :=
  ∀ n, P1481728429206057110.a n = A303269 n

end A303269

/-! ## A303269.P2490118813058592583

`∑{digits}[n, A329116(#²²)]`
-/

namespace A303269.P2490118813058592583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A329116 ((x ^ 2) ^ 2)).sum

end

end A303269.P2490118813058592583

namespace A303269

/-- `∑{digits}[n, A329116(#²²)]` -/
def P2490118813058592583.Spec : Prop :=
  ∀ n, P2490118813058592583.a n = A303269 n

end A303269

/-! ## A303269.P10058237442828245405

`∑{digits}[n, -#*A274922(#)]`
-/

namespace A303269.P10058237442828245405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -((x : ℤ) * A274922 x)).sum

end

end A303269.P10058237442828245405

namespace A303269

/-- `∑{digits}[n, -#*A274922(#)]` -/
def P10058237442828245405.Spec : Prop :=
  ∀ n, P10058237442828245405.a n = A303269 n

end A303269

/-! ## A303269.P2027559099776193881

`∑{digits}[n, #²*A062157(#)]`
-/

namespace A303269.P2027559099776193881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x ^ 2 : ℤ) * A062157 x).sum

end

end A303269.P2027559099776193881

namespace A303269

/-- `∑{digits}[n, #²*A062157(#)]` -/
def P2027559099776193881.Spec : Prop :=
  ∀ n, P2027559099776193881.a n = A303269 n

end A303269

/-! ## A303269.P7641238876442555279

`∑{digits}[n, #*A105811(#+2)]`
-/

namespace A303269.P7641238876442555279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A105811 (x + 2)).sum

end

end A303269.P7641238876442555279

namespace A303269

/-- `∑{digits}[n, #*A105811(#+2)]` -/
def P7641238876442555279.Spec : Prop :=
  ∀ n, P7641238876442555279.a n = A303269 n

end A303269

/-! ## A303269.P15028429793726685601

`∑{digits}[n, -#²*A015343(#)]`
-/

namespace A303269.P15028429793726685601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -((x ^ 2 : ℤ) * A015343 x)).sum

end

end A303269.P15028429793726685601

namespace A303269

/-- `∑{digits}[n, -#²*A015343(#)]` -/
def P15028429793726685601.Spec : Prop :=
  ∀ n, P15028429793726685601.a n = A303269 n

end A303269

/-! ## A303269.P6609103424388335793

`∑{digits}[n, A001057(A077221(#))]`
-/

namespace A303269.P6609103424388335793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001057 (A077221 x).toNat).sum

end

end A303269.P6609103424388335793

namespace A303269

/-- `∑{digits}[n, A001057(A077221(#))]` -/
def P6609103424388335793.Spec : Prop :=
  ∀ n, P6609103424388335793.a n = A303269 n

end A303269

/-! ## A303269.P7540903179297828190

`∑{digits}[n, A001057(A042948(#²))]`
-/

namespace A303269.P7540903179297828190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001057 (A042948 (x ^ 2)).toNat).sum

end

end A303269.P7540903179297828190

namespace A303269

/-- `∑{digits}[n, A001057(A042948(#²))]` -/
def P7540903179297828190.Spec : Prop :=
  ∀ n, P7540903179297828190.a n = A303269 n

end A303269

/-!
# A303271: Number of ordered rooted trees with n non-root nodes such that the maximal outdegree equals three.

The programs for A303271, there is no canonical definition to state claims against.
-/

/-! ## A303271.P10324278359774707285

`A036765(n+3)-A001006(n+3)`
-/

namespace A303271.P10324278359774707285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 (n + 3) - A001006 (n + 3)

end

end A303271.P10324278359774707285

/-! ## A303271.P12263598148964303187

`A203717(∑[n+2]+4)`
-/

namespace A303271.P12263598148964303187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203717 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303271.P12263598148964303187

/-! ## A303271.P11699564777644253782

`A203717(A167614(n+1))%A198694(n)`
-/

namespace A303271.P11699564777644253782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203717 (A167614 (n + 1)).toNat) (A198694 n)

end

end A303271.P11699564777644253782

/-! ## A303271.P11520388509396144980

`or(A000007(n), A203717(A167614(n+1)))`
-/

namespace A303271.P11520388509396144980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203717 (A167614 (n + 1)).toNat)

end

end A303271.P11520388509396144980

/-! ## A303271.P807782224399410925

`A057427(n+1)*A203717(A167614(n+1))`
-/

namespace A303271.P807782224399410925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A203717 (A167614 (n + 1)).toNat

end

end A303271.P807782224399410925

/-! ## A303271.P1318131193969263656

`A007318(A000217(n))*A203717(A167614(n+1))`
-/

namespace A303271.P1318131193969263656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A203717 (A167614 (n + 1)).toNat

end

end A303271.P1318131193969263656

/-! ## A303271.P17957277552087719266

`A052307(A000196(n))*A203717(A167614(n+1))`
-/

namespace A303271.P17957277552087719266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000196 n).toNat * A203717 (A167614 (n + 1)).toNat

end

end A303271.P17957277552087719266

/-! ## A303271.P1742977815556538998

`A177121(A000124(n))*A203717(A167614(n+1))`
-/

namespace A303271.P1742977815556538998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177121 (A000124 n).toNat * A203717 (A167614 (n + 1)).toNat

end

end A303271.P1742977815556538998

/-! ## A303271.P15353314674798551649

`A036765(n+3)-A026300(A000096(n+3))`
-/

namespace A303271.P15353314674798551649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 (n + 3) - A026300 (A000096 (n + 3)).toNat

end

end A303271.P15353314674798551649

/-! ## A303271.P7207428019356168201

`A052307(A034856(n+7))*A203717(A167614(n+1))`
-/

namespace A303271.P7207428019356168201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A034856 (n + 7)).toNat * A203717 (A167614 (n + 1)).toNat

end

end A303271.P7207428019356168201

/-!
# A303272: Multiples of 1852.

The programs for A303272, the canonical program `A303272.P16107057978895886374` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303272 has offset 0).

The definition of A303272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303272.P16107057978895886374

`2*n*926`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303272

/-- `2*n*926` -/
def P16107057978895886374.Spec : Prop :=
  ∀ n, (P16107057978895886374.a n : ℤ) = A303272 n

theorem P16107057978895886374.correct : P16107057978895886374.Spec := by
  intro n
  simp only [A303272]

end A303272

/-!
# A303273: Array T(n,k) = binomial(n, 2) + k*n + 1 read by antidiagonals.

The programs for A303273, the canonical program `A303273.P10493878207234774189` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303273 has offset 0).

The definition of A303273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303273.P10493878207234774189

`1+A087401(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A303273

/-- `1+A087401(n)` -/
def P10493878207234774189.Spec : Prop :=
  ∀ n, P10493878207234774189.a n = A303273 n

theorem P10493878207234774189.correct : P10493878207234774189.Spec := by
  intro n
  simp only [A303273]

end A303273

/-! ## A303273.P1140618952815520066

`A309559(n)-A003056(n)`
-/

namespace A303273.P1140618952815520066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n - A003056 n

end

end A303273.P1140618952815520066

namespace A303273

/-- `A309559(n)-A003056(n)` -/
def P1140618952815520066.Spec : Prop :=
  ∀ n, P1140618952815520066.a n = A303273 n

end A303273

/-! ## A303273.P14911118732756399509

`A176798(n)-A367964(n)`
-/

namespace A303273.P14911118732756399509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - A367964 n

end

end A303273.P14911118732756399509

namespace A303273

/-- `A176798(n)-A367964(n)` -/
def P14911118732756399509.Spec : Prop :=
  ∀ n, P14911118732756399509.a n = A303273 n

end A303273

/-! ## A303273.P9653958035824492658

`A076110(n+1)-A112367(n)`
-/

namespace A303273.P9653958035824492658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - A112367 n

end

end A303273.P9653958035824492658

namespace A303273

/-- `A076110(n+1)-A112367(n)` -/
def P9653958035824492658.Spec : Prop :=
  ∀ n, P9653958035824492658.a n = A303273 n

end A303273

/-! ## A303273.P2016821855195814320

`A079904(n)+1-A112367(n)`
-/

namespace A303273.P2016821855195814320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (1 - A112367 n)

end

end A303273.P2016821855195814320

namespace A303273

/-- `A079904(n)+1-A112367(n)` -/
def P2016821855195814320.Spec : Prop :=
  ∀ n, P2016821855195814320.a n = A303273 n

end A303273

/-! ## A303273.P4687666035681571053

`A141419(n+1)-A051162(n)`
-/

namespace A303273.P4687666035681571053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A051162 n

end

end A303273.P4687666035681571053

namespace A303273

/-- `A141419(n+1)-A051162(n)` -/
def P4687666035681571053.Spec : Prop :=
  ∀ n, P4687666035681571053.a n = A303273 n

end A303273

/-! ## A303273.P15003125926928464903

`A141418(n+1)+1-A003056(n)`
-/

namespace A303273.P15003125926928464903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + (1 - A003056 n)

end

end A303273.P15003125926928464903

namespace A303273

/-- `A141418(n+1)+1-A003056(n)` -/
def P15003125926928464903.Spec : Prop :=
  ∀ n, P15003125926928464903.a n = A303273 n

end A303273

/-! ## A303273.P1902408692792055834

`A309559(n)+1-A002024(n+1)`
-/

namespace A303273.P1902408692792055834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + (1 - A002024 (n + 1))

end

end A303273.P1902408692792055834

namespace A303273

/-- `A309559(n)+1-A002024(n+1)` -/
def P1902408692792055834.Spec : Prop :=
  ∀ n, P1902408692792055834.a n = A303273 n

end A303273

/-! ## A303273.P2894239503372879410

`A008867(n+2)+1-A271668(n)`
-/

namespace A303273.P2894239503372879410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2) + (1 - A271668 n)

end

end A303273.P2894239503372879410

namespace A303273

/-- `A008867(n+2)+1-A271668(n)` -/
def P2894239503372879410.Spec : Prop :=
  ∀ n, P2894239503372879410.a n = A303273 n

end A303273

/-! ## A303273.P4988974837666412361

`1-n-(A001489(n)-A087401(n))`
-/

namespace A303273.P4988974837666412361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - (A001489 n - A087401 n)

end

end A303273.P4988974837666412361

namespace A303273

/-- `1-n-(A001489(n)-A087401(n))` -/
def P4988974837666412361.Spec : Prop :=
  ∀ n, P4988974837666412361.a n = A303273 n

end A303273

/-! ## A303273.P14686903649995140990

`A075362(n+1)+1-A134464(n+1)`
-/

namespace A303273.P14686903649995140990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (1 - A134464 (n + 1))

end

end A303273.P14686903649995140990

namespace A303273

/-- `A075362(n+1)+1-A134464(n+1)` -/
def P14686903649995140990.Spec : Prop :=
  ∀ n, P14686903649995140990.a n = A303273 n

end A303273

/-! ## A303273.P12040411538007183179

`A141419(n+1)+1-A094727(n+1)`
-/

namespace A303273.P12040411538007183179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + (1 - A094727 (n + 1))

end

end A303273.P12040411538007183179

namespace A303273

/-- `A141419(n+1)+1-A094727(n+1)` -/
def P12040411538007183179.Spec : Prop :=
  ∀ n, P12040411538007183179.a n = A303273 n

end A303273

/-! ## A303273.P7320090460441678997

`A070543(n+1)+1-A204250(n+1)`
-/

namespace A303273.P7320090460441678997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070543 (n + 1) + (1 - A204250 (n + 1))

end

end A303273.P7320090460441678997

namespace A303273

/-- `A070543(n+1)+1-A204250(n+1)` -/
def P7320090460441678997.Spec : Prop :=
  ∀ n, P7320090460441678997.a n = A303273 n

end A303273

/-! ## A303273.P12179991146663067173

`A087401(n)-A008683(A007918(n))`
-/

namespace A303273.P12179991146663067173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n - A008683 (A007918 n).toNat

end

end A303273.P12179991146663067173

namespace A303273

/-- `A087401(n)-A008683(A007918(n))` -/
def P12179991146663067173.Spec : Prop :=
  ∀ n, P12179991146663067173.a n = A303273 n

end A303273

/-! ## A303273.P4782234974454942971

`A077028(n)+A309559(n)-A003991(n+1)`
-/

namespace A303273.P4782234974454942971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A309559 n - A003991 (n + 1))

end

end A303273.P4782234974454942971

namespace A303273

/-- `A077028(n)+A309559(n)-A003991(n+1)` -/
def P4782234974454942971.Spec : Prop :=
  ∀ n, P4782234974454942971.a n = A303273 n

end A303273

/-! ## A303273.P1994907411237462337

`A000217(A002262(n))+A077028(n)-A002262(n)`
-/

namespace A303273.P1994907411237462337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n).toNat + (A077028 n - A002262 n)

end

end A303273.P1994907411237462337

namespace A303273

/-- `A000217(A002262(n))+A077028(n)-A002262(n)` -/
def P1994907411237462337.Spec : Prop :=
  ∀ n, P1994907411237462337.a n = A303273 n

end A303273

/-! ## A303273.P17460196380376347759

`A329854(A061579(n))`
-/

namespace A303273.P17460196380376347759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329854 (A061579 n).toNat

end

end A303273.P17460196380376347759

namespace A303273

/-- `A329854(A061579(n))` -/
def P17460196380376347759.Spec : Prop :=
  ∀ n, P17460196380376347759.a n = A303273 n

end A303273

/-! ## A303273.P8755311539781915269

`A049780(A061579(n))+1-A002262(n)`
-/

namespace A303273.P8755311539781915269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (A061579 n).toNat + (1 - A002262 n)

end

end A303273.P8755311539781915269

namespace A303273

/-- `A049780(A061579(n))+1-A002262(n)` -/
def P8755311539781915269.Spec : Prop :=
  ∀ n, P8755311539781915269.a n = A303273 n

end A303273

/-! ## A303273.P12877561253537678735

`A008619(2*A087401(n))`
-/

namespace A303273.P12877561253537678735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A087401 n).toNat

end

end A303273.P12877561253537678735

namespace A303273

/-- `A008619(2*A087401(n))` -/
def P12877561253537678735.Spec : Prop :=
  ∀ n, P12877561253537678735.a n = A303273 n

end A303273

/-! ## A303273.P14184501591835654343

`A028242(2*A087401(n))`
-/

namespace A303273.P14184501591835654343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A087401 n).toNat

end

end A303273.P14184501591835654343

namespace A303273

/-- `A028242(2*A087401(n))` -/
def P14184501591835654343.Spec : Prop :=
  ∀ n, P14184501591835654343.a n = A303273 n

end A303273

/-!
# A303277: If n = Product (p_j^k_j) then a(n) = (Sum (k_j))^(Sum (p_j)).

The programs for A303277, the canonical program `A303277.P7597357755535033035` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303277 has offset 1).

The definition of A303277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303277.P7597357755535033035

`A001222(n+1)^A008472(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A303277

/-- `A001222(n+1)^A008472(n+1)` -/
def P7597357755535033035.Spec : Prop :=
  ∀ n, P7597357755535033035.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P4367875534747731266

`∑{e}[n+1, #]^∑{p}[n+1, #]`
-/

namespace A303277.P4367875534747731266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A303277.P4367875534747731266

namespace A303277

/-- `∑{e}[n+1, #]^∑{p}[n+1, #]` -/
def P4367875534747731266.Spec : Prop :=
  ∀ n, (P4367875534747731266.a n : ℤ) = A303277 (n + 1)

end A303277

/-! ## A303277.P872705652441644854

`∑{p}[n+1, val(n+1, #)]^∑{p}[n+1, #]`
-/

namespace A303277.P872705652441644854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p) ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A303277.P872705652441644854

namespace A303277

/-- `∑{p}[n+1, val(n+1, #)]^∑{p}[n+1, #]` -/
def P872705652441644854.Spec : Prop :=
  ∀ n, (P872705652441644854.a n : ℤ) = A303277 (n + 1)

end A303277

/-! ## A303277.P2847014483885152503

`Δ[A022559(n)]^∑{p}[n+1, #]`
-/

namespace A303277.P2847014483885152503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A303277.P2847014483885152503

namespace A303277

/-- `Δ[A022559(n)]^∑{p}[n+1, #]` -/
def P2847014483885152503.Spec : Prop :=
  ∀ n, P2847014483885152503.a n = A303277 (n + 1)

end A303277

/-! ## A303277.P12923967978871122366

`A086436(n+1)^∑{p}[n+1, #]`
-/

namespace A303277.P12923967978871122366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A303277.P12923967978871122366

namespace A303277

/-- `A086436(n+1)^∑{p}[n+1, #]` -/
def P12923967978871122366.Spec : Prop :=
  ∀ n, P12923967978871122366.a n = A303277 (n + 1)

end A303277

/-! ## A303277.P4979438048207869465

`∑{e}[n+1, #]^A008475(∏{p}[n+1, #])`
-/

namespace A303277.P4979438048207869465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (A008475 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

end

end A303277.P4979438048207869465

namespace A303277

/-- `∑{e}[n+1, #]^A008475(∏{p}[n+1, #])` -/
def P4979438048207869465.Spec : Prop :=
  ∀ n, P4979438048207869465.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P6181167985159969209

`∏{p}[n+1, A001222(2*n+1-n)^#]`
-/

namespace A303277.P6181167985159969209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001222 (2 * n + 1 - n) ^ p

end

end A303277.P6181167985159969209

namespace A303277

/-- `∏{p}[n+1, A001222(2*n+1-n)^#]` -/
def P6181167985159969209.Spec : Prop :=
  ∀ n, P6181167985159969209.a n = A303277 (n + 1)

end A303277

/-! ## A303277.P4730816800952119897

`A001222(n+1)^A105221(n+1)`
-/

namespace A303277.P4730816800952119897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) ^ (A105221 (n + 1) : ℤ)

end

end A303277.P4730816800952119897

namespace A303277

/-- `A001222(n+1)^A105221(n+1)` -/
def P4730816800952119897.Spec : Prop :=
  ∀ n, P4730816800952119897.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P11211875607743762558

`A001222(n+1)^∑{d}[n+1, A061397(#)]`
-/

namespace A303277.P11211875607743762558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A061397 d : ℤ)

end

end A303277.P11211875607743762558

namespace A303277

/-- `A001222(n+1)^∑{d}[n+1, A061397(#)]` -/
def P11211875607743762558.Spec : Prop :=
  ∀ n, P11211875607743762558.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P4314907072278517282

`A001222(n+1)^A001414(∏{p}[n+1, #])`
-/

namespace A303277.P4314907072278517282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) ^ (A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A303277.P4314907072278517282

namespace A303277

/-- `A001222(n+1)^A001414(∏{p}[n+1, #])` -/
def P4314907072278517282.Spec : Prop :=
  ∀ n, P4314907072278517282.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P9605613180968779714

`A056239(∏{e}[n+1, A028864(#)])^∑{p}[n+1, #]`
-/

namespace A303277.P9605613180968779714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), A028864 (Nat.factorization (f1 n) p)).toNat ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A303277.P9605613180968779714

namespace A303277

/-- `A056239(∏{e}[n+1, A028864(#)])^∑{p}[n+1, #]` -/
def P9605613180968779714.Spec : Prop :=
  ∀ n, P9605613180968779714.a n = A303277 (n + 1)

end A303277

/-! ## A303277.P12181651467210039976

`A056239(∏{e}[n+1, A095285(#)])^∑{p}[n+1, #]`
-/

namespace A303277.P12181651467210039976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A303277.P12181651467210039976

namespace A303277

/-- `A056239(∏{e}[n+1, A095285(#)])^∑{p}[n+1, #]` -/
def P12181651467210039976.Spec : Prop :=
  ∀ n, P12181651467210039976.a n = A303277 (n + 1)

end A303277

/-! ## A303277.P814714771489134425

`A001222(n+1)^A001414(A007947(n+1))`
-/

namespace A303277.P814714771489134425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) ^ (A001414 (A007947 (n + 1)).toNat : ℤ)

end

end A303277.P814714771489134425

namespace A303277

/-- `A001222(n+1)^A001414(A007947(n+1))` -/
def P814714771489134425.Spec : Prop :=
  ∀ n, P814714771489134425.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P11597600152772925935

`A051903(A061142(n+1))^A008472(n+1)`
-/

namespace A303277.P11597600152772925935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (A061142 (n + 1)).toNat : ℚ) ^ (A008472 (n + 1) : ℤ)

end

end A303277.P11597600152772925935

namespace A303277

/-- `A051903(A061142(n+1))^A008472(n+1)` -/
def P11597600152772925935.Spec : Prop :=
  ∀ n, P11597600152772925935.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P154237213120785089

`A056239(∏{e}[n+1, A028864(#)])^A008472(n+1)`
-/

namespace A303277.P154237213120785089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (∏ p ∈ Nat.primeFactors (f1 n), A028864 (Nat.factorization (f1 n) p)).toNat : ℚ) ^ (A008472 (n + 1) : ℤ)

end

end A303277.P154237213120785089

namespace A303277

/-- `A056239(∏{e}[n+1, A028864(#)])^A008472(n+1)` -/
def P154237213120785089.Spec : Prop :=
  ∀ n, P154237213120785089.a n = (A303277 (n + 1) : ℚ)

end A303277

/-! ## A303277.P9560118984304540296

`A132896(A034856(n+1))^A008472(n+1)`
-/

namespace A303277.P9560118984304540296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132896 (A034856 (n + 1)).toNat : ℚ) ^ (A008472 (n + 1) : ℤ)

end

end A303277.P9560118984304540296

namespace A303277

/-- `A132896(A034856(n+1))^A008472(n+1)` -/
def P9560118984304540296.Spec : Prop :=
  ∀ n, P9560118984304540296.a n = (A303277 (n + 1) : ℚ)

end A303277

/-!
# A303278: If n = Product_j p_j^k_j where the p_j are distinct primes then a(n) = (Product_j k_j)^(Product_j p_j).

The programs for A303278, the canonical program `A303278.P12937793510976264127` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303278 has offset 1).

The definition of A303278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303278.P12937793510976264127

`A005361(n+1)^A007947(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303278

/-- `A005361(n+1)^A007947(n+1)` -/
def P12937793510976264127.Spec : Prop :=
  ∀ n, P12937793510976264127.a n = (A303278 (n + 1) : ℚ)

end A303278

/-! ## A303278.P11752791497516437988

`∏{e}[n+1, #]^∏{p}[n+1, #]`
-/

namespace A303278.P11752791497516437988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A303278.P11752791497516437988

namespace A303278

/-- `∏{e}[n+1, #]^∏{p}[n+1, #]` -/
def P11752791497516437988.Spec : Prop :=
  ∀ n, (P11752791497516437988.a n : ℤ) = A303278 (n + 1)

end A303278

/-! ## A303278.P13387012443786024020

`A000005((n+1)/∏{p}[n+1, #])^∏{p}[n+1, #]`
-/

namespace A303278.P13387012443786024020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A303278.P13387012443786024020

namespace A303278

/-- `A000005((n+1)/∏{p}[n+1, #])^∏{p}[n+1, #]` -/
def P13387012443786024020.Spec : Prop :=
  ∀ n, P13387012443786024020.a n = A303278 (n + 1)

end A303278

/-! ## A303278.P14688198739734018842

`A000005(A003557(n+1))^A007947(n+1)`
-/

namespace A303278.P14688198739734018842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A003557 (n + 1)).toNat : ℚ) ^ (A007947 (n + 1) : ℤ)

end

end A303278.P14688198739734018842

namespace A303278

/-- `A000005(A003557(n+1))^A007947(n+1)` -/
def P14688198739734018842.Spec : Prop :=
  ∀ n, P14688198739734018842.a n = (A303278 (n + 1) : ℚ)

end A303278

/-! ## A303278.P13477112246144439958

`A000005((n+1)/A007947(n+1))^A007947(n+1)`
-/

namespace A303278.P13477112246144439958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat : ℚ) ^ (A007947 (n + 1) : ℤ)

end

end A303278.P13477112246144439958

namespace A303278

/-- `A000005((n+1)/A007947(n+1))^A007947(n+1)` -/
def P13477112246144439958.Spec : Prop :=
  ∀ n, P13477112246144439958.a n = (A303278 (n + 1) : ℚ)

end A303278

/-!
# A303279: Expansion of (1/(1 - x)^2) * Sum_{p prime, k>=1} x^(p^k)/(1 - x^(p^k)).

The programs for A303279, the canonical program `A303279.P4997132288076846884` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303279 has offset 1).

The definition of A303279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303279.P4997132288076846884

`∑[∑[∑{e}[n+1, #]]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303279

/-- `∑[∑[∑{e}[n+1, #]]]` -/
def P4997132288076846884.Spec : Prop :=
  ∀ n, (P4997132288076846884.a n : ℤ) = A303279 (n + 1)

theorem P4997132288076846884.correct : P4997132288076846884.Spec := by
  intro n
  simp only [A303279, Nat.add_sub_cancel]

end A303279

/-! ## A303279.P14351095638015069234

`∑[∑[log2(∏{e}[n+1, 2^#])]]`
-/

namespace A303279.P14351095638015069234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f3 n), 2 ^ Nat.factorization (f3 n) p : ℕ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P14351095638015069234

namespace A303279

/-- `∑[∑[log2(∏{e}[n+1, 2^#])]]` -/
def P14351095638015069234.Spec : Prop :=
  ∀ n, P14351095638015069234.a n = (A303279 (n + 1) : ℝ)

end A303279

/-! ## A303279.P4257597958199427287

`∑[∑[∑{p}[n+1, val(n+1, #)]]]`
-/

namespace A303279.P4257597958199427287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation (n + 1) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P4257597958199427287

namespace A303279

/-- `∑[∑[∑{p}[n+1, val(n+1, #)]]]` -/
def P4257597958199427287.Spec : Prop :=
  ∀ n, (P4257597958199427287.a n : ℤ) = A303279 (n + 1)

end A303279

/-! ## A303279.P2081683977681930593

`∑[A022559(n+1)]`
-/

namespace A303279.P2081683977681930593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P2081683977681930593

namespace A303279

/-- `∑[A022559(n+1)]` -/
def P2081683977681930593.Spec : Prop :=
  ∀ n, P2081683977681930593.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P16741386740286505005

`∑[∑[A001222(n+1)]]`
-/

namespace A303279.P16741386740286505005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P16741386740286505005

namespace A303279

/-- `∑[∑[A001222(n+1)]]` -/
def P16741386740286505005.Spec : Prop :=
  ∀ n, P16741386740286505005.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P15417021689855278744

`∑[∑[log2(A061142(n+1))]]`
-/

namespace A303279.P15417021689855278744
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P15417021689855278744

namespace A303279

/-- `∑[∑[log2(A061142(n+1))]]` -/
def P15417021689855278744.Spec : Prop :=
  ∀ n, P15417021689855278744.a n = (A303279 (n + 1) : ℝ)

end A303279

/-! ## A303279.P3826240713315130086

`∑[∑[A073093(n+1)-1]]`
-/

namespace A303279.P3826240713315130086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P3826240713315130086

namespace A303279

/-- `∑[∑[A073093(n+1)-1]]` -/
def P3826240713315130086.Spec : Prop :=
  ∀ n, P3826240713315130086.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P17388136639049435683

`∑[∑[A086436(n+1)]-1]`
-/

namespace A303279.P17388136639049435683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P17388136639049435683

namespace A303279

/-- `∑[∑[A086436(n+1)]-1]` -/
def P17388136639049435683.Spec : Prop :=
  ∀ n, P17388136639049435683.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P10240212925682314202

`∑[∑[A255201(n+1)/2]]`
-/

namespace A303279.P10240212925682314202
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P10240212925682314202

namespace A303279

/-- `∑[∑[A255201(n+1)/2]]` -/
def P10240212925682314202.Spec : Prop :=
  ∀ n, P10240212925682314202.a n = (A303279 (n + 1) : ℚ)

end A303279

/-! ## A303279.P15454847134530816622

`∑[∑[val(A124508(n+1), 2)]]`
-/

namespace A303279.P15454847134530816622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P15454847134530816622

namespace A303279

/-- `∑[∑[val(A124508(n+1), 2)]]` -/
def P15454847134530816622.Spec : Prop :=
  ∀ n, (P15454847134530816622.a n : ℤ) = A303279 (n + 1)

end A303279

/-! ## A303279.P5644190801671890385

`∑[∑[val(A165831(n+1), 2)]]`
-/

namespace A303279.P5644190801671890385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165831 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P5644190801671890385

namespace A303279

/-- `∑[∑[val(A165831(n+1), 2)]]` -/
def P5644190801671890385.Spec : Prop :=
  ∀ n, (P5644190801671890385.a n : ℤ) = A303279 (n + 1)

end A303279

/-! ## A303279.P6212838375078215940

`∑[∑[val(A165825(n+1), 4)]]`
-/

namespace A303279.P6212838375078215940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P6212838375078215940

namespace A303279

/-- `∑[∑[val(A165825(n+1), 4)]]` -/
def P6212838375078215940.Spec : Prop :=
  ∀ n, (P6212838375078215940.a n : ℤ) = A303279 (n + 1)

end A303279

/-! ## A303279.P14595916456154189165

`∑[∑[A252736(n+1)]+n]`
-/

namespace A303279.P14595916456154189165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P14595916456154189165

namespace A303279

/-- `∑[∑[A252736(n+1)]+n]` -/
def P14595916456154189165.Spec : Prop :=
  ∀ n, P14595916456154189165.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P2114059653365857817

`∑[∑[n-A075795(n+1)]]`
-/

namespace A303279.P2114059653365857817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A075795 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P2114059653365857817

namespace A303279

/-- `∑[∑[n-A075795(n+1)]]` -/
def P2114059653365857817.Spec : Prop :=
  ∀ n, P2114059653365857817.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P5634806326811492207

`∑[∑[A222312(n+1)-n]]`
-/

namespace A303279.P5634806326811492207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222312 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P5634806326811492207

namespace A303279

/-- `∑[∑[A222312(n+1)-n]]` -/
def P5634806326811492207.Spec : Prop :=
  ∀ n, P5634806326811492207.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P2764526088496578690

`∑[A210241(n+1)-(n+1)]`
-/

namespace A303279.P2764526088496578690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210241 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P2764526088496578690

namespace A303279

/-- `∑[A210241(n+1)-(n+1)]` -/
def P2764526088496578690.Spec : Prop :=
  ∀ n, P2764526088496578690.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P2662421516127463764

`∑[∑[1-A317531(2*(n+1))]]`
-/

namespace A303279.P2662421516127463764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317531 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P2662421516127463764

namespace A303279

/-- `∑[∑[1-A317531(2*(n+1))]]` -/
def P2662421516127463764.Spec : Prop :=
  ∀ n, P2662421516127463764.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P507517536749273919

`∑[∑[A001222(3*n-(n-2))-1]]`
-/

namespace A303279.P507517536749273919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P507517536749273919

namespace A303279

/-- `∑[∑[A001222(3*n-(n-2))-1]]` -/
def P507517536749273919.Spec : Prop :=
  ∀ n, P507517536749273919.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P1406379177972832783

`∑[∑[A056239(A105560(n+1))]]`
-/

namespace A303279.P1406379177972832783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105560 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303279.P1406379177972832783

namespace A303279

/-- `∑[∑[A056239(A105560(n+1))]]` -/
def P1406379177972832783.Spec : Prop :=
  ∀ n, P1406379177972832783.a n = A303279 (n + 1)

end A303279

/-! ## A303279.P1359465440884459162

`A303281(n+1)-A323444(n+1)`
-/

namespace A303279.P1359465440884459162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303281 (n + 1) - A323444 (n + 1)

end

end A303279.P1359465440884459162

namespace A303279

/-- `A303281(n+1)-A323444(n+1)` -/
def P1359465440884459162.Spec : Prop :=
  ∀ n, P1359465440884459162.a n = A303279 (n + 1)

end A303279

/-!
# A303280: Number of strict integer partitions of n whose parts have a common divisor other than 1.

The programs for A303280, there is no canonical definition to state claims against.
-/

/-! ## A303280.P18284082603809447235

`A000009(n+1)-A078374(n+1)`
-/

namespace A303280.P18284082603809447235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A078374 (n + 1)

end

end A303280.P18284082603809447235

/-! ## A303280.P12643856017641491713

`∑{d}[n+1, A008683(#)*A024994((n+1)/#)]`
-/

namespace A303280.P12643856017641491713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A024994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303280.P12643856017641491713

/-! ## A303280.P14982115719041182368

`∑{d}[n+1, A057427(#-1)*A078374((n+1)/#)]`
-/

namespace A303280.P14982115719041182368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A078374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303280.P14982115719041182368

/-! ## A303280.P5837600984894397972

`A025147(n+1)+A025147(n)-A078374(n+1)`
-/

namespace A303280.P5837600984894397972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A078374 (n + 1))

end

end A303280.P5837600984894397972

/-! ## A303280.P16826625091055824581

`A000041(n+1)-(A078374(n+1)+A047967(n+1))`
-/

namespace A303280.P16826625091055824581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A078374 (n + 1) + A047967 (n + 1))

end

end A303280.P16826625091055824581

/-! ## A303280.P9842830189793450135

`A318717(n+1)-A318715(n+1)`
-/

namespace A303280.P9842830189793450135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 (n + 1) - A318715 (n + 1)

end

end A303280.P9842830189793450135

/-! ## A303280.P140995564930965872

`A025147(n+1)-A337452(n+1)`
-/

namespace A303280.P140995564930965872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) - A337452 (n + 1)

end

end A303280.P140995564930965872

/-!
# A303281: Expansion of (x/(1 - x)) * (d/dx) Sum_{p prime, k>=1} x^(p^k)/(1 - x^(p^k)).

The programs for A303281, the canonical program `A303281.P2109453912597957061` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303281 has offset 1).

The definition of A303281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303281.P2109453912597957061

`∑[(n+1)*∑{e}[n+1, #]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303281

/-- `∑[(n+1)*∑{e}[n+1, #]]` -/
def P2109453912597957061.Spec : Prop :=
  ∀ n, (P2109453912597957061.a n : ℤ) = A303281 (n + 1)

theorem P2109453912597957061.correct : P2109453912597957061.Spec := by
  intro n
  simp only [A303281, Nat.add_sub_cancel]

end A303281

/-! ## A303281.P8117422901825967440

`∑[(n+1)*log(∏{e}[n+1, exp(#)])]`
-/

namespace A303281.P8117422901825967440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.log (∏ p ∈ Nat.primeFactors (f2 n), Real.exp (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P8117422901825967440

namespace A303281

/-- `∑[(n+1)*log(∏{e}[n+1, exp(#)])]` -/
def P8117422901825967440.Spec : Prop :=
  ∀ n, P8117422901825967440.a n = (A303281 (n + 1) : ℝ)

end A303281

/-! ## A303281.P16255560031916797061

`∑[∑{e}[n+1, floor(#/acot(n+1))]]`
-/

namespace A303281.P16255560031916797061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(Nat.factorization (f2 n) p : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P16255560031916797061

namespace A303281

/-- `∑[∑{e}[n+1, floor(#/acot(n+1))]]` -/
def P16255560031916797061.Spec : Prop :=
  ∀ n, P16255560031916797061.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P16193555087212507612

`∑[∑{e}[n+1, #]/(n+1)^(-1)]`
-/

namespace A303281.P16193555087212507612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P16193555087212507612

namespace A303281

/-- `∑[∑{e}[n+1, #]/(n+1)^(-1)]` -/
def P16193555087212507612.Spec : Prop :=
  ∀ n, P16193555087212507612.a n = (A303281 (n + 1) : ℚ)

end A303281

/-! ## A303281.P9914297544349801967

`∑[(n+1)*log2(∏{e}[n+1, 2^#])]`
-/

namespace A303281.P9914297544349801967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 ((∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P9914297544349801967

namespace A303281

/-- `∑[(n+1)*log2(∏{e}[n+1, 2^#])]` -/
def P9914297544349801967.Spec : Prop :=
  ∀ n, P9914297544349801967.a n = (A303281 (n + 1) : ℝ)

end A303281

/-! ## A303281.P329682156694090782

`∑[∑{p}[n+1, (n+1)*val(n+1, #)]]`
-/

namespace A303281.P329682156694090782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (n + 1) * SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P329682156694090782

namespace A303281

/-- `∑[∑{p}[n+1, (n+1)*val(n+1, #)]]` -/
def P329682156694090782.Spec : Prop :=
  ∀ n, (P329682156694090782.a n : ℤ) = A303281 (n + 1)

end A303281

/-! ## A303281.P8141495899608605161

`∑{e}[n+1, #*(n+1)]+a(n-1)` with `a(0)=0`
-/

namespace A303281.P8141495899608605161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (n + 1) + a (n - 1)

end

end A303281.P8141495899608605161

namespace A303281

/-- `∑{e}[n+1, #*(n+1)]+a(n-1)` -/
def P8141495899608605161.Spec : Prop :=
  ∀ n, (P8141495899608605161.a n : ℤ) = A303281 (n + 1)

end A303281

/-! ## A303281.P15087890410311624440

`∑[A066959(n+1)]`
-/

namespace A303281.P15087890410311624440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P15087890410311624440

namespace A303281

/-- `∑[A066959(n+1)]` -/
def P15087890410311624440.Spec : Prop :=
  ∀ n, P15087890410311624440.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P10250630515919964769

`∑[A387470(n+1)+n+1]`
-/

namespace A303281.P10250630515919964769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387470 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P10250630515919964769

namespace A303281

/-- `∑[A387470(n+1)+n+1]` -/
def P10250630515919964769.Spec : Prop :=
  ∀ n, P10250630515919964769.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P11596604368710067376

`∑[(n+1)*A001222(n+1)]`
-/

namespace A303281.P11596604368710067376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P11596604368710067376

namespace A303281

/-- `∑[(n+1)*A001222(n+1)]` -/
def P11596604368710067376.Spec : Prop :=
  ∀ n, P11596604368710067376.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P9908505317316324769

`A323444(n+1)+A303279(n+1)`
-/

namespace A303281.P9908505317316324769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323444 (n + 1) + A303279 (n + 1)

end

end A303281.P9908505317316324769

namespace A303281

/-- `A323444(n+1)+A303279(n+1)` -/
def P9908505317316324769.Spec : Prop :=
  ∀ n, P9908505317316324769.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P12464197557424844257

`∑[(n+1)*A347395((n+1)²)]`
-/

namespace A303281.P12464197557424844257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A347395 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P12464197557424844257

namespace A303281

/-- `∑[(n+1)*A347395((n+1)²)]` -/
def P12464197557424844257.Spec : Prop :=
  ∀ n, P12464197557424844257.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P4927541777870352376

`∑[(n+1)*A360616((n+1)²)]`
-/

namespace A303281.P4927541777870352376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360616 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P4927541777870352376

namespace A303281

/-- `∑[(n+1)*A360616((n+1)²)]` -/
def P4927541777870352376.Spec : Prop :=
  ∀ n, P4927541777870352376.a n = A303281 (n + 1)

end A303281

/-! ## A303281.P15431012354267345111

`∑[(n+1)*A362412((n+1)²)]`
-/

namespace A303281.P15431012354267345111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A362412 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303281.P15431012354267345111

namespace A303281

/-- `∑[(n+1)*A362412((n+1)²)]` -/
def P15431012354267345111.Spec : Prop :=
  ∀ n, P15431012354267345111.a n = A303281 (n + 1)

end A303281

/-!
# A303282: Numbers whose prime indices have no common divisor other than 1 but are not pairwise coprime.

The programs for A303282, there is no canonical definition to state claims against.
-/

/-! ## A303282.P3853681315716590072

`∩[A289509(n+1), comp[A302569(n+1)]]`
-/

namespace A303282.P3853681315716590072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A303282.P3853681315716590072

/-! ## A303282.P17072450430568930803

`∩[A289509(n+1), comp[A302696(n+1)]]`
-/

namespace A303282.P17072450430568930803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A303282.P17072450430568930803

/-! ## A303282.P5825591650698494822

`lt[A327512(n+1), A327529(n+1)]+1`
-/

namespace A303282.P5825591650698494822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303282.P5825591650698494822

/-! ## A303282.P1630015972758219615

`lt[A327513(n+1), A327530(n+1)]+1`
-/

namespace A303282.P1630015972758219615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303282.P1630015972758219615

/-! ## A303282.P11204361049270999313

`A020725(lt[A327512(n+1), A327529(n+1)])`
-/

namespace A303282.P11204361049270999313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303282.P11204361049270999313

/-! ## A303282.P14584991514154401541

`A020725(lt[A327513(n+1), A327530(n+1)])`
-/

namespace A303282.P14584991514154401541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303282.P14584991514154401541

/-!
# A303283: Squarefree numbers whose prime indices have no common divisor other than 1 but are not pairwise coprime.

The programs for A303283, there is no canonical definition to state claims against.
-/

/-! ## A303283.P9324352590407309788

`record[A007947(A303282(n+3))]`
-/

namespace A303283.P9324352590407309788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A303282 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303283.P9324352590407309788

/-! ## A303283.P7416659653358918914

`filter[A303282(n+1), A008966(#)]`
-/

namespace A303283.P7416659653358918914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A303283.P7416659653358918914

/-! ## A303283.P12647981107800139324

`filter[A303282(n+1), A323154(#)]`
-/

namespace A303283.P12647981107800139324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A303283.P12647981107800139324

/-! ## A303283.P2607202216712209117

`filter[A303282(n+1), A354819(#)]`
-/

namespace A303283.P2607202216712209117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A303283.P2607202216712209117

/-! ## A303283.P6855634734556640854

`filter[A303282(n+1), A380469(#)]`
-/

namespace A303283.P6855634734556640854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A303283.P6855634734556640854

/-!
# A303284: Number of permutations p of [n] such that the sequence of ascents and descents of 0p or of 0p0 (if n is odd) forms a Dyck path.

The programs for A303284, there is no canonical definition to state claims against.
-/

/-! ## A303284.P3862544074841549138

`A007733(A133846(3*n+1)+3)`
-/

namespace A303284.P3862544074841549138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A133846 (3 * n + 1) + 3).toNat

end

end A303284.P3862544074841549138

/-! ## A303284.P16115323819306999940

`A007203(A007175(n+1)+char[∑[n]])`
-/

namespace A303284.P16115323819306999940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (A007175 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A303284.P16115323819306999940

/-! ## A303284.P6579479360120895815

`A116908(2^n-n)*A290821(n+1)`
-/

namespace A303284.P6579479360120895815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116908 (2 ^ n - n) * A290821 (n + 1)

end

end A303284.P6579479360120895815

/-!
# A303285: Number of permutations p of [2n] such that the sequence of ascents and descents of p0 forms a Dyck path.

The programs for A303285, there is no canonical definition to state claims against.
-/

/-! ## A303285.P12084439439837239281

`A316728(n²)`
-/

namespace A303285.P12084439439837239281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 (n ^ 2)

end

end A303285.P12084439439837239281

/-! ## A303285.P3131533597696171016

`A303284(2*n)`
-/

namespace A303285.P3131533597696171016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303284 (2 * n)

end

end A303285.P3131533597696171016

/-! ## A303285.P14509494482163758834

`A303287(2*n)`
-/

namespace A303285.P14509494482163758834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303287 (2 * n)

end

end A303285.P14509494482163758834

/-! ## A303285.P16273233556069999921

`A321280(∑[2*n])`
-/

namespace A303285.P16273233556069999921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303285.P16273233556069999921

/-! ## A303285.P5882413478382798819

`lcm(A007875(n+1), A316728(A000290(n)))`
-/

namespace A303285.P5882413478382798819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007875 (n + 1)) (A316728 (A000290 n).toNat)

end

end A303285.P5882413478382798819

/-!
# A303286: Number of permutations p of [2n+1] such that the sequence of ascents and descents of 0p0 forms a Dyck path.

The programs for A303286, there is no canonical definition to state claims against.
-/

/-! ## A303286.P5473143654060258880

`A303284(Δ[n²])`
-/

namespace A303286.P5473143654060258880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A303286.P5473143654060258880

/-! ## A303286.P7995268958876926223

`record[A303284(A006257(n))]`
-/

namespace A303286.P7995268958876926223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303284 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303286.P7995268958876926223

/-! ## A303286.P583036730766934343

`record[A303284(A099375(n))]`
-/

namespace A303286.P583036730766934343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303284 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303286.P583036730766934343

/-! ## A303286.P3746191999050575635

`record[A303284(A106609(n))]`
-/

namespace A303286.P3746191999050575635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303284 (A106609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303286.P3746191999050575635

/-! ## A303286.P10928290574517158710

`record[A303284(abs(A009001(n)))]`
-/

namespace A303286.P10928290574517158710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303284 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303286.P10928290574517158710

/-!
# A303287: Number of permutations p of [n] such that the sequence of ascents and descents of p or of p0 (if n is even) forms a Dyck path.

The programs for A303287, there is no canonical definition to state claims against.
-/

/-! ## A303287.P3912498036984528816

`A321280(∑[ceil(n/2)])`
-/

namespace A303287.P3912498036984528816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321280 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303287.P3912498036984528816

/-! ## A303287.P11819533135944114272

`A316728(A397268(n))`
-/

namespace A303287.P11819533135944114272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 (A397268 n).toNat

end

end A303287.P11819533135944114272

/-! ## A303287.P6553708434564980916

`or(char[1], A321280(A002620(n+1)))`
-/

namespace A303287.P6553708434564980916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A321280 (A002620 (n + 1)).toNat)

end

end A303287.P6553708434564980916

/-! ## A303287.P18210598244289616158

`abs(A321280(A002620(n+1))-A000038(n))`
-/

namespace A303287.P18210598244289616158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321280 (A002620 (n + 1)).toNat - A000038 n|

end

end A303287.P18210598244289616158

/-! ## A303287.P11991811672919494255

`char[A002262(n)]*A321280(A002620(n+1))`
-/

namespace A303287.P11991811672919494255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321280 (A002620 (n + 1)).toNat

end

end A303287.P11991811672919494255

/-! ## A303287.P17197112966095969602

`char[A037012(n)]*A321280(A002620(n+1))`
-/

namespace A303287.P17197112966095969602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321280 (A002620 (n + 1)).toNat

end

end A303287.P17197112966095969602

/-!
# A303289: E.g.f. A(x) satisfies: e = Sum_{n>=0} (1/n!) * (1+x)^(n^2) / A(x)^n.

The programs for A303289, there is no canonical definition to state claims against.
-/

/-! ## A303289.P13978879881608718508

`A388720(A026646(n))`
-/

namespace A303289.P13978879881608718508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388720 (A026646 n).toNat

end

end A303289.P13978879881608718508

/-!
# A303295: a(n) is the maximum water retention of a height-3 length-n number parallelogram with maximum water area.

The programs for A303295, the canonical program `A303295.P1715683619907409833` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303295 has offset 0).

The definition of A303295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303295.P1715683619907409833

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=20, a(2)=49, a(3)=99, a(4)=165`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303295

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1715683619907409833.Spec : Prop :=
  ∀ n, P1715683619907409833.a n = A303295 n

theorem P1715683619907409833.correct : P1715683619907409833.Spec := by
  intro n
  simp only [A303295]

end A303295

/-! ## A303295.P2959837740236422594

`(A113127(n)+1)*A062545(n)`
-/

namespace A303295.P2959837740236422594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113127 n + 1) * A062545 n

end

end A303295.P2959837740236422594

namespace A303295

/-- `(A113127(n)+1)*A062545(n)` -/
def P2959837740236422594.Spec : Prop :=
  ∀ n, P2959837740236422594.a n = A303295 n

end A303295

/-! ## A303295.P8751712769654822507

`(A005843(n)+A004280(n+1))*A062545(n)`
-/

namespace A303295.P8751712769654822507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n + A004280 (n + 1)) * A062545 n

end

end A303295.P8751712769654822507

namespace A303295

/-- `(A005843(n)+A004280(n+1))*A062545(n)` -/
def P8751712769654822507.Spec : Prop :=
  ∀ n, P8751712769654822507.a n = A303295 n

end A303295

/-! ## A303295.P1631774692365998885

`A062545(n)*A223134(A004273(n))`
-/

namespace A303295.P1631774692365998885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n * A223134 (A004273 n).toNat

end

end A303295.P1631774692365998885

namespace A303295

/-- `A062545(n)*A223134(A004273(n))` -/
def P1631774692365998885.Spec : Prop :=
  ∀ n, P1631774692365998885.a n = A303295 n

end A303295

/-! ## A303295.P11620189249730653800

`A062545(n)*A267873(A004280(n+1))`
-/

namespace A303295.P11620189249730653800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n * A267873 (A004280 (n + 1)).toNat

end

end A303295.P11620189249730653800

namespace A303295

/-- `A062545(n)*A267873(A004280(n+1))` -/
def P11620189249730653800.Spec : Prop :=
  ∀ n, P11620189249730653800.a n = A303295 n

end A303295

/-! ## A303295.P8155248695553478037

`(A005408(2*n)-A046698(n+1))*A005408(n+1)`
-/

namespace A303295.P8155248695553478037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 (2 * n) - A046698 (n + 1)) * A005408 (n + 1)

end

end A303295.P8155248695553478037

namespace A303295

/-- `(A005408(2*n)-A046698(n+1))*A005408(n+1)` -/
def P8155248695553478037.Spec : Prop :=
  ∀ n, P8155248695553478037.a n = A303295 n

end A303295

/-! ## A303295.P3719829687330610666

`(A285766(2*n+1)-A285766(2*n))*A005408(n+1)`
-/

namespace A303295.P3719829687330610666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285766 (2 * n + 1) - A285766 (2 * n)) * A005408 (n + 1)

end

end A303295.P3719829687330610666

namespace A303295

/-- `(A285766(2*n+1)-A285766(2*n))*A005408(n+1)` -/
def P3719829687330610666.Spec : Prop :=
  ∀ n, P3719829687330610666.a n = A303295 n

end A303295

/-! ## A303295.P9354037827608176512

`record[A057174(n+3)*A223134(n)]`
-/

namespace A303295.P9354037827608176512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (n + 3) * A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303295.P9354037827608176512

namespace A303295

/-- `record[A057174(n+3)*A223134(n)]` -/
def P9354037827608176512.Spec : Prop :=
  ∀ n, P9354037827608176512.a n = A303295 n

end A303295

/-! ## A303295.P10439144452539038502

`A062545(n)*A267261(2*(n+1))`
-/

namespace A303295.P10439144452539038502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n * A267261 (2 * (n + 1))

end

end A303295.P10439144452539038502

namespace A303295

/-- `A062545(n)*A267261(2*(n+1))` -/
def P10439144452539038502.Spec : Prop :=
  ∀ n, P10439144452539038502.a n = A303295 n

end A303295

/-! ## A303295.P4865698216840000790

`A000096(4*n+1)-A000096(4*n+1)%(2*n+3)`
-/

namespace A303295.P4865698216840000790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (4 * n + 1) - Int.tmod (A000096 (4 * n + 1)) (2 * n + 3 : ℤ)

end

end A303295.P4865698216840000790

namespace A303295

/-- `A000096(4*n+1)-A000096(4*n+1)%(2*n+3)` -/
def P4865698216840000790.Spec : Prop :=
  ∀ n, P4865698216840000790.a n = A303295 n

end A303295

/-!
# A303296: Digital roots of fourth powers A000583.

The programs for A303296, the canonical program `A303296.P14557534402267612853` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303296 has offset 1).

The definition of A303296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303296.P14557534402267612853

`a(n-9)` with `a(0)=1, a(1)=7, a(2)=9, a(3)=4, a(4)=4, a(5)=9, a(6)=7, a(7)=1, a(8)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303296

/-- `a(n-9)` -/
def P14557534402267612853.Spec : Prop :=
  ∀ n, (P14557534402267612853.a n : ℤ) = A303296 (n + 1)

theorem P14557534402267612853.correct : P14557534402267612853.Spec := by
  intro n
  simp only [A303296, Nat.add_sub_cancel]

end A303296

/-!
# A303297: List of middle divisors: for every positive integer that has middle divisors, add its middle divisors to the sequence.

The programs for A303297, there is no canonical definition to state claims against.
-/

/-! ## A303297.P10264023622034572573

`A299761(lt[0, A299761(n+1)]+1)`
-/

namespace A303297.P10264023622034572573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A303297.P10264023622034572573

/-! ## A303297.P17782645647241616188

`A234287(∑[A308509(n+1)])`
-/

namespace A303297.P17782645647241616188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234287 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303297.P17782645647241616188

/-! ## A303297.P17784307628787776403

`A001221(A107926(n)*A181600(n))`
-/

namespace A303297.P17784307628787776403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107926 n * A181600 n).toNat

end

end A303297.P17784307628787776403

/-! ## A303297.P15133794843128000358

`A365721(A000070(2*n)-A293233(2*n+3))`
-/

namespace A303297.P15133794843128000358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365721 (A000070 (2 * n) - A293233 (2 * n + 3)).toNat

end

end A303297.P15133794843128000358

/-! ## A303297.P5807438454185091129

`A283682(A073919(n))`
-/

namespace A303297.P5807438454185091129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A073919 n).toNat

end

end A303297.P5807438454185091129

/-!
# A303298: Generalized 21-gonal (or icosihenagonal) numbers: m*(19*m - 17)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303298, the canonical program `A303298.P16608124388466489229` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303298 has offset 0).

The definition of A303298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303298.P16608124388466489229

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=21, a(4)=55`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303298

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16608124388466489229.Spec : Prop :=
  ∀ n, P16608124388466489229.a n = A303298 n

theorem P16608124388466489229.correct : P16608124388466489229.Spec := by
  intro n
  simp only [A303298]

end A303298

/-! ## A303298.P11987669773341208605

`∑[((char[2*n]+1)^4+1)*n/2]`
-/

namespace A303298.P11987669773341208605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f2 j = n then 1 else 0) + 1) ^ 4 + 1 : ℕ) : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303298.P11987669773341208605

namespace A303298

/-- `∑[((char[2*n]+1)^4+1)*n/2]` -/
def P11987669773341208605.Spec : Prop :=
  ∀ n, P11987669773341208605.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P5069801069484421202

`A195048(n)-a(n-1)` with `a(0)=0`
-/

namespace A303298.P5069801069484421202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195048 n - a (n - 1)

end

end A303298.P5069801069484421202

namespace A303298

/-- `A195048(n)-a(n-1)` -/
def P5069801069484421202.Spec : Prop :=
  ∀ n, P5069801069484421202.a n = A303298 n

end A303298

/-! ## A303298.P5260066655198032555

`A218864(n+1)+∑[n-gcd(n, ∑[n])]`
-/

namespace A303298.P5260066655198032555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303298.P5260066655198032555

namespace A303298

/-- `A218864(n+1)+∑[n-gcd(n, ∑[n])]` -/
def P5260066655198032555.Spec : Prop :=
  ∀ n, P5260066655198032555.a n = A303298 n

end A303298

/-! ## A303298.P18211114053115560070

`A303813(n)+A110660(n)`
-/

namespace A303298.P18211114053115560070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 n + A110660 n

end

end A303298.P18211114053115560070

namespace A303298

/-- `A303813(n)+A110660(n)` -/
def P18211114053115560070.Spec : Prop :=
  ∀ n, P18211114053115560070.a n = A303298 n

end A303298

/-! ## A303298.P5799629410961340816

`A303303(n)-A110660(n)`
-/

namespace A303298.P5799629410961340816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303303 n - A110660 n

end

end A303298.P5799629410961340816

namespace A303298

/-- `A303303(n)-A110660(n)` -/
def P5799629410961340816.Spec : Prop :=
  ∀ n, P5799629410961340816.a n = A303298 n

end A303298

/-! ## A303298.P10981739315527583645

`A303305(n)+2*A110660(n)`
-/

namespace A303298.P10981739315527583645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303305 n + 2 * A110660 n

end

end A303298.P10981739315527583645

namespace A303298

/-- `A303305(n)+2*A110660(n)` -/
def P10981739315527583645.Spec : Prop :=
  ∀ n, P10981739315527583645.a n = A303298 n

end A303298

/-! ## A303298.P15809143794552776674

`2*A195313(n)-A001318(n)`
-/

namespace A303298.P15809143794552776674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195313 n - A001318 n

end

end A303298.P15809143794552776674

namespace A303298

/-- `2*A195313(n)-A001318(n)` -/
def P15809143794552776674.Spec : Prop :=
  ∀ n, P15809143794552776674.a n = A303298 n

end A303298

/-! ## A303298.P17069314801029158739

`2*A195818(n)-A085787(n)`
-/

namespace A303298.P17069314801029158739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195818 n - A085787 n

end

end A303298.P17069314801029158739

namespace A303298

/-- `2*A195818(n)-A085787(n)` -/
def P17069314801029158739.Spec : Prop :=
  ∀ n, P17069314801029158739.a n = A303298 n

end A303298

/-! ## A303298.P13699244200901321208

`2*A277082(n)-A118277(n)`
-/

namespace A303298.P13699244200901321208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A118277 n

end

end A303298.P13699244200901321208

namespace A303298

/-- `2*A277082(n)-A118277(n)` -/
def P13699244200901321208.Spec : Prop :=
  ∀ n, P13699244200901321208.a n = A303298 n

end A303298

/-! ## A303298.P7476386503774756216

`A303304(n)-2*A110660(n)`
-/

namespace A303298.P7476386503774756216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303304 n - 2 * A110660 n

end

end A303298.P7476386503774756216

namespace A303298

/-- `A303304(n)-2*A110660(n)` -/
def P7476386503774756216.Spec : Prop :=
  ∀ n, P7476386503774756216.a n = A303298 n

end A303298

/-! ## A303298.P14868504161380060421

`(A303812(n)+A195818(n))/2`
-/

namespace A303298.P14868504161380060421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303812 n + A195818 n : ℚ) / 2

end

end A303298.P14868504161380060421

namespace A303298

/-- `(A303812(n)+A195818(n))/2` -/
def P14868504161380060421.Spec : Prop :=
  ∀ n, P14868504161380060421.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P16801304758203858030

`(A316725(n)+A277082(n))/2`
-/

namespace A303298.P16801304758203858030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316725 n + A277082 n : ℚ) / 2

end

end A303298.P16801304758203858030

namespace A303298

/-- `(A316725(n)+A277082(n))/2` -/
def P16801304758203858030.Spec : Prop :=
  ∀ n, P16801304758203858030.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P15881628345018142126

`2*A303303(n)-A303304(n)`
-/

namespace A303298.P15881628345018142126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303303 n - A303304 n

end

end A303298.P15881628345018142126

namespace A303298

/-- `2*A303303(n)-A303304(n)` -/
def P15881628345018142126.Spec : Prop :=
  ∀ n, P15881628345018142126.a n = A303298 n

end A303298

/-! ## A303298.P692049782948122049

`(A303305(n)+A303304(n))/2`
-/

namespace A303298.P692049782948122049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303305 n + A303304 n : ℚ) / 2

end

end A303298.P692049782948122049

namespace A303298

/-- `(A303305(n)+A303304(n))/2` -/
def P692049782948122049.Spec : Prop :=
  ∀ n, P692049782948122049.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P2860064000296237489

`(A303813(n)+A303303(n))/2`
-/

namespace A303298.P2860064000296237489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303813 n + A303303 n : ℚ) / 2

end

end A303298.P2860064000296237489

namespace A303298

/-- `(A303813(n)+A303303(n))/2` -/
def P2860064000296237489.Spec : Prop :=
  ∀ n, P2860064000296237489.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P14441058633730073246

`2*A303814(n)-A316725(n)`
-/

namespace A303298.P14441058633730073246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A316725 n

end

end A303298.P14441058633730073246

namespace A303298

/-- `2*A303814(n)-A316725(n)` -/
def P14441058633730073246.Spec : Prop :=
  ∀ n, P14441058633730073246.a n = A303298 n

end A303298

/-! ## A303298.P6433427184778085815

`A303299(n)-A110660(n)/2`
-/

namespace A303298.P6433427184778085815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303299 n : ℚ) - (A110660 n : ℚ) / 2

end

end A303298.P6433427184778085815

namespace A303298

/-- `A303299(n)-A110660(n)/2` -/
def P6433427184778085815.Spec : Prop :=
  ∀ n, P6433427184778085815.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P5590487350303833330

`A218864(n+1)+A110660(n)/2`
-/

namespace A303298.P5590487350303833330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218864 (n + 1) : ℚ) + (A110660 n : ℚ) / 2

end

end A303298.P5590487350303833330

namespace A303298

/-- `A218864(n+1)+A110660(n)/2` -/
def P5590487350303833330.Spec : Prop :=
  ∀ n, P5590487350303833330.a n = (A303298 n : ℚ)

end A303298

/-! ## A303298.P6329996156330355228

`(A303814(n)+A274979(n+1))/2`
-/

namespace A303298.P6329996156330355228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303814 n + A274979 (n + 1) : ℚ) / 2

end

end A303298.P6329996156330355228

namespace A303298

/-- `(A303814(n)+A274979(n+1))/2` -/
def P6329996156330355228.Spec : Prop :=
  ∀ n, P6329996156330355228.a n = (A303298 n : ℚ)

end A303298

/-!
# A303299: Generalized 22-gonal (or icosidigonal) numbers: m*(10*m - 9) with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303299, the canonical program `A303299.P7797662927761446019` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303299 has offset 0).

The definition of A303299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303299.P7797662927761446019

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=19, a(3)=22, a(4)=58`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A303299

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P7797662927761446019.Spec : Prop :=
  ∀ n, P7797662927761446019.a n = A303299 n

theorem P7797662927761446019.correct : P7797662927761446019.Spec := by
  intro n
  simp only [A303299]

end A303299

/-! ## A303299.P18100066985552656517

`∑[n*gcd(9, n%2)]`
-/

namespace A303299.P18100066985552656517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 9 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303299.P18100066985552656517

namespace A303299

/-- `∑[n*gcd(9, n%2)]` -/
def P18100066985552656517.Spec : Prop :=
  ∀ n, (P18100066985552656517.a n : ℤ) = A303299 n

end A303299

/-! ## A303299.P5191268588925058277

`∑[n*or(1, gcd(2, n))²]`
-/

namespace A303299.P5191268588925058277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (Nat.gcd 2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303299.P5191268588925058277

namespace A303299

/-- `∑[n*or(1, gcd(2, n))²]` -/
def P5191268588925058277.Spec : Prop :=
  ∀ n, (P5191268588925058277.a n : ℤ) = A303299 n

end A303299

/-! ## A303299.P15762085687777919960

`∑[n*((-1)^n+2)²]`
-/

namespace A303299.P15762085687777919960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303299.P15762085687777919960

namespace A303299

/-- `∑[n*((-1)^n+2)²]` -/
def P15762085687777919960.Spec : Prop :=
  ∀ n, P15762085687777919960.a n = A303299 n

end A303299

/-! ## A303299.P18266993190930968552

`∑[n-3]+(2*n+1)*xor(1, n+2)`
-/

namespace A303299.P18266993190930968552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 * n + 1) * Nat.xor 1 (n + 2) : ℤ)

end

end A303299.P18266993190930968552

namespace A303299

/-- `∑[n-3]+(2*n+1)*xor(1, n+2)` -/
def P18266993190930968552.Spec : Prop :=
  ∀ n, P18266993190930968552.a n = A303299 n

end A303299

/-! ## A303299.P8717164483728621155

`2*A195818(n)-∑[n]`
-/

namespace A303299.P8717164483728621155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195818 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A303299.P8717164483728621155

namespace A303299

/-- `2*A195818(n)-∑[n]` -/
def P8717164483728621155.Spec : Prop :=
  ∀ n, P8717164483728621155.a n = A303299 n

end A303299

/-! ## A303299.P15598440101314265328

`A317318(n)+a(n-1)` with `a(0)=0`
-/

namespace A303299.P15598440101314265328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A317318 n + a (n - 1)

end

end A303299.P15598440101314265328

namespace A303299

/-- `A317318(n)+a(n-1)` -/
def P15598440101314265328.Spec : Prop :=
  ∀ n, P15598440101314265328.a n = A303299 n

end A303299

/-! ## A303299.P4539306014360472189

`A195148(n)-a(n-1)` with `a(0)=0`
-/

namespace A303299.P4539306014360472189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195148 n - a (n - 1)

end

end A303299.P4539306014360472189

namespace A303299

/-- `A195148(n)-a(n-1)` -/
def P4539306014360472189.Spec : Prop :=
  ∀ n, P4539306014360472189.a n = A303299 n

end A303299

/-! ## A303299.P8518973814892883778

`-∑[n*(1-A040024(n))]`
-/

namespace A303299.P8518973814892883778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A040024 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303299.P8518973814892883778

namespace A303299

/-- `-∑[n*(1-A040024(n))]` -/
def P8518973814892883778.Spec : Prop :=
  ∀ n, P8518973814892883778.a n = A303299 n

end A303299

/-! ## A303299.P4741607621814555441

`A035008(floor(n/2))+∑[n]`
-/

namespace A303299.P4741607621814555441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 ⌊(n : ℚ) / 2⌋.toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A303299.P4741607621814555441

namespace A303299

/-- `A035008(floor(n/2))+∑[n]` -/
def P4741607621814555441.Spec : Prop :=
  ∀ n, P4741607621814555441.a n = A303299 n

end A303299

/-! ## A303299.P7970403498423928660

`∑[2*A195817(n)]-(n+1)*n/2`
-/

namespace A303299.P7970403498423928660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195817 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (n + 1 : ℚ) * ((n : ℚ) / 2)

end

end A303299.P7970403498423928660

namespace A303299

/-- `∑[2*A195817(n)]-(n+1)*n/2` -/
def P7970403498423928660.Spec : Prop :=
  ∀ n, P7970403498423928660.a n = (A303299 n : ℚ)

end A303299

/-! ## A303299.P11096660680643240254

`A303814(n)-A110660(n)`
-/

namespace A303299.P11096660680643240254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303814 n - A110660 n

end

end A303299.P11096660680643240254

namespace A303299

/-- `A303814(n)-A110660(n)` -/
def P11096660680643240254.Spec : Prop :=
  ∀ n, P11096660680643240254.a n = A303299 n

end A303299

/-! ## A303299.P16742145771578857262

`∑[A317318(n)]%A008412(n)`
-/

namespace A303299.P16742145771578857262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008412 n)

end

end A303299.P16742145771578857262

namespace A303299

/-- `∑[A317318(n)]%A008412(n)` -/
def P16742145771578857262.Spec : Prop :=
  ∀ n, P16742145771578857262.a n = A303299 n

end A303299

/-! ## A303299.P13666087510267050185

`A218864(n+1)+A110660(n)`
-/

namespace A303299.P13666087510267050185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) + A110660 n

end

end A303299.P13666087510267050185

namespace A303299

/-- `A218864(n+1)+A110660(n)` -/
def P13666087510267050185.Spec : Prop :=
  ∀ n, P13666087510267050185.a n = A303299 n

end A303299

/-! ## A303299.P13754179403770651398

`A298039(n)-A057029(n+1)`
-/

namespace A303299.P13754179403770651398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 n - A057029 (n + 1)

end

end A303299.P13754179403770651398

namespace A303299

/-- `A298039(n)-A057029(n+1)` -/
def P13754179403770651398.Spec : Prop :=
  ∀ n, P13754179403770651398.a n = A303299 n

end A303299

/-! ## A303299.P5650004263081457930

`A303298(n)+A110660(n)/2`
-/

namespace A303299.P5650004263081457930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303298 n : ℚ) + (A110660 n : ℚ) / 2

end

end A303299.P5650004263081457930

namespace A303299

/-- `A303298(n)+A110660(n)/2` -/
def P5650004263081457930.Spec : Prop :=
  ∀ n, P5650004263081457930.a n = (A303299 n : ℚ)

end A303299

/-! ## A303299.P98521714780636343

`A316724(n)-2*A110660(n)`
-/

namespace A303299.P98521714780636343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316724 n - 2 * A110660 n

end

end A303299.P98521714780636343

namespace A303299

/-- `A316724(n)-2*A110660(n)` -/
def P98521714780636343.Spec : Prop :=
  ∀ n, P98521714780636343.a n = A303299 n

end A303299

/-! ## A303299.P13325133509557626500

`2*A195160(n)-A317300(n)`
-/

namespace A303299.P13325133509557626500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195160 n - A317300 n

end

end A303299.P13325133509557626500

namespace A303299

/-- `2*A195160(n)-A317300(n)` -/
def P13325133509557626500.Spec : Prop :=
  ∀ n, P13325133509557626500.a n = A303299 n

end A303299

/-! ## A303299.P18130719031106131069

`(A316729(n)+A195818(n))/2`
-/

namespace A303299.P18130719031106131069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316729 n + A195818 n : ℚ) / 2

end

end A303299.P18130719031106131069

namespace A303299

/-- `(A316729(n)+A195818(n))/2` -/
def P18130719031106131069.Spec : Prop :=
  ∀ n, P18130719031106131069.a n = (A303299 n : ℚ)

end A303299

/-! ## A303299.P13843969022777752520

`(A303815(n)+A277082(n))/2`
-/

namespace A303299.P13843969022777752520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303815 n + A277082 n : ℚ) / 2

end

end A303299.P13843969022777752520

namespace A303299

/-- `(A303815(n)+A277082(n))/2` -/
def P13843969022777752520.Spec : Prop :=
  ∀ n, P13843969022777752520.a n = (A303299 n : ℚ)

end A303299

