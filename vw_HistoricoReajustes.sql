CREATE VIEW vw_HistoricoReajustes
AS
SELECT 
    r.id,
    o.titulo_projeto,
    r.data_reajuste,
    r.percentual,
    r.economia_anterior,
    r.economia_nova,
    r.motivo
FROM 
    reajustes r
JOIN 
    orcamentos o ON r.orcamento_id = o.id; 