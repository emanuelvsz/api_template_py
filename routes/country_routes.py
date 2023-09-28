def load_country_routes(app):
    @app.get("/country", tags=["Resources"])
    def get():
        return list_countries()

def list_countries():
    return "Listing countries"